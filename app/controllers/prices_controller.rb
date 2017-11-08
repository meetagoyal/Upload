class PricesController < ApplicationController
before_action :auth_admin

    def index 
        
        @exclusions = Price.limit(5).offset(params[:page].to_i * 5).order(PRC_CHG_DT: 'asc')
        @page = params[:page].to_i
        @count = Price.count
        @pages = (@count / 5.0).ceil - 1
    end

    def new
        
    end

    def destroy
        binding.pry
        price = Price.find(params[:id])
        price.destroy
        redirect_to prices_path
    end


end