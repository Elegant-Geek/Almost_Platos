class ItemsController < ApplicationController
 
    before_action :require_login, except: [:new, :create, :index] #copied to items controller from users 
    before_action :edit_correct_item, only: [:edit, :update, :destroy, :new] #copied to items controller from users 
    before_action :set_user, only: [:show, :edit, :update, :destroy]

    def index   
        @user = User.find(params[:user_id])  
        @container = @user.items.paginate(:page => params[:page], :per_page=>5)

       case params[:filter]
         when "all_items"
           @items = @container.all_items
         when "recently_added"
           @items = @container.recently_added
         when "top_rated"
           @items = @container.all.top_rated
        when "flair_bought"
            @items = @container.all.flair_bought
        when "flair_sold"
            @items = @container.all.flair_sold
        when "flair_favorites"
            @items = @container.all.flair_favorites
         else
            @items = @container.all_items #most recently updated are at the top
         end
       end

    def show
        @complaints = @item.complaints.order(:name)
        @fans = @item.fans
        if current_user
          @favorite = current_user.favorites.find_by(item_id: @item.id)
        end
    end

    def edit
        @complaints = @item.complaints.order(:name)
    end

    def update
        if @item.update(item_params)
        redirect_to user_item_url(@user, @item), notice: "Item successfully updated!"
        else
         render :edit
      end
    end

    def new
        @user = User.find(params[:user_id])
        @item = @user.items.new
    end

    # def create
    #     @item = Item.new(item_params)
    #    if  @item.save
    #     redirect_to @item, notice: "Item successfully created!"
    #    else
    #     render :new
    #    end
    # end

    def create
        @user = User.find(params[:user_id])
        @item = @user.items.new(item_params)  
        if @item.save && current_user = @user
            redirect_to user_items_path(@user),
                          notice: "Item successfully added!"
          else
            render :new, alert: "Cannot alter another person's items!" 
          end
        end      

    def destroy
        @item.destroy
        redirect_to user_items_path(@user), alert: "Item successfully deleted!"
    end

    private
    def item_params
        params.require(:item)
        .permit(:name, :stars, :description, :found_on, :brand, :size, :flair, :main_image, complaint_ids: [])
    end

    def set_user
        @user = User.find(params[:user_id])
        @item = @user.items.find(params[:id]) # I DID IT

        # @item = Item.find(params[:user_id])
       
        # if @item.nil? && current_user
        #     redirect_to user_path(@current_user), alert: "unauthorized access!"
        # elsif @item.nil? 
        #     redirect_back(fallback_location: login_path, alert: "unauthorized access!")
        # else
        #     @item = Item.find(params[:user_id])
        # end
    end

end

