class ItemsController < ApplicationController
    def index
        # @items = ["Jacket", "Sweater", "Pants"]
        @items = Item.all
    end
end
