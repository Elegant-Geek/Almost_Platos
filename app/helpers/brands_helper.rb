module BrandsHelper

    def item_size_for(brand)
        Item.where(brand: brand.name).size
        end

end
