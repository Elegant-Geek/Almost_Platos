class ItemsController < ApplicationController
 
    before_action :require_login, except: [:new, :create] #copied to items controller from users 
    before_action :require_correct_user, only: [:edit, :update, :destroy] #copied to items controller from users 
    before_action :set_user, only: [:show, :edit, :update, :destroy]

    def index
        # @items = Item.all
        @user = User.find(params[:user_id])
        # @items = User.items
        @items = @user.items 

    end

    def show
        @complaints = @item.complaints.order(:name)
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
      end

    def destroy
        @item.destroy
        redirect_to user_items_path(@user), alert: "Item successfully deleted!"
    end

    private
    def item_params
        params.require(:item)
        .permit(:name, :stars, :description, :found_on, :brand, :size, :flair, :image_file_name, complaint_ids: [])
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

