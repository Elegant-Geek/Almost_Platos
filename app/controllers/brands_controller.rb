class BrandsController < ApplicationController
    before_action :require_login, only: [:index]
    before_action :admin_brand_access?, only: [:new, :create, :destroy]

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

    # def destroy
    #     @brand.destroy
    #     redirect_to brands_path, alert: "Brand successfully deleted!"
    # end

    private
    def brand_params
        params.require(:brand)
        .permit(:name)
    end

end
