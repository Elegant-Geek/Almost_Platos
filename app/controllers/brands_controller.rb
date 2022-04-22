class BrandsController < ApplicationController
    before_action :require_login, only: [:index]
    before_action :admin_brand_access?, only: [:new, :create, :edit, :destroy]

    def index
        @brands = Brand.all.paginate(:page => params[:page], :per_page=>30)
    end

    def new
        @brand = Brand.new
    end

    def create
        @brand = Brand.new(brand_params) 
        if @brand.save
            redirect_to brands_url, notice: "Brand successfully added!"
        else
            render :new
        end
    end

    def edit
        @brand = Brand.find(params[:id])
        if @brand.name == "unknown" || @brand.name == "other"
        redirect_to brands_url, alert: "You may not alter the 'unknown' or 'other' brand."
        end
    end

    def update
        @brand = Brand.find(params[:id])
        @test = Item.where(brand: @brand.name)

        if @brand.update(brand_params)
            @test.each do |item|
                item.brand = "#{@brand.name}"
                item.save
            end
          redirect_to brands_url, notice: "#{@brand.name} successfully updated!"
        else
          render :edit
        end
      end

    def destroy
        @brand = Brand.find(params[:id])
        @test = Item.where(brand: @brand.name)
        
        if @brand.destroy
            @test.each do |item|
                item.brand = "unknown"
                item.save
            end
        redirect_to brands_url, alert: "Brand successfully deleted!"
        end
    end

    private
    def brand_params
        params.require(:brand)
        .permit(:name)
    end

end
