class ItemsController < ApplicationController
    def index
        # @items = ["Jacket", "Sweater", "Pants"]
        # @items = Item.all
        @items = Item.all
    end

    def show
        @item = Item.find(params[:id])
    end

    def edit
        @item = Item.find(params[:id])
    end

    def update
        @item = Item.find(params[:id])
        @item.update(item_params)
        redirect_to @item
    end

    def new
        @item = Item.new
    end

    def create
        @item = Item.new(item_params)
        @item.save
        redirect_to @item, notice: "Item successfully created!"
    end

    def destroy
        @item = Item.find(params[:id])
        @item.destroy
        redirect_to items_url, alert: "Item successfully deleted!"
    end

    private
    def item_params
        params.require(:item).permit(:name, :stars, :description, :found_on, :brand, :size, :flair, :image_file_name)
    end
end

