class ItemsController < ApplicationController

    before_action :set_item, only: [:show, :edit, :update, :destroy]

    def index
        # @items = ["Jacket", "Sweater", "Pants"]
        # @items = Item.all
        @items = Item.everything
    end

    def show
        # @item = Item.find(params[:id])
        @complaints = @item.complaints.order(:name)

    end

    def edit
        # @item = Item.find(params[:id])
    end

    def update
        if @item.update(item_params)
        redirect_to @item, notice: "Item successfully updated!"
        else
         render :edit
      end
    end

    def new
        @item = Item.new
    end

    def create
        @item = Item.new(item_params)
       if  @item.save
        redirect_to @item, notice: "Item successfully created!"
       else
        render :new
       end
    end

    def destroy
        @item.destroy
        redirect_to items_url, alert: "Item successfully deleted!"
    end

    private
    def item_params
        params.require(:item)
        .permit(:name, :stars, :description, :found_on, :brand, :size, :flair, :image_file_name, complaint_ids: [])
    end

    def set_item
        @item = Item.find(params[:id])
    end
end

