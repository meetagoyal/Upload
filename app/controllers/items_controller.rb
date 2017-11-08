require 'file_parse'

class ItemsController < ApplicationController
    before_action :auth_admin
    
    def index
       @masterdata = 
       @items = Item.limit(5).offset(params[:page].to_i * 5).order(start_date: 'asc') 
       @page = params[:page].to_i
       @count = Item.count
       @pages = (@count / 5.0).ceil - 1
        
      end

    
    def new
       @item = Item.new
    end

    def create
        @item = Item.new(params[:item].permit(:item_number, :start_date, :end_date))
        if @item.save
          redirect_to items_path
        else
          render 'new'
        end
    end

    def download
        send_file(
            "#{Rails.root}/public/ItemSub.xlsx",
            filename: "ItemSub.xlsx",
            type: "application/xlsx"
          )
    end

    def destroy
        item = Item.find(params[:id])
        item.destroy
        redirect_to items_path
    end

    def export
        @items = Item.all
        respond_to do |format|
           
            format.xlsx {
                response.headers['Content-Disposition'] = 'attachment; filename="ItemSubExclusion.xlsx"'
              }
            end
          
    end

    def upload
        tmp = params[:my_file].tempfile
        
        filename = params[:my_file].original_filename
        ext = filename.split('.')
        if (ext[1].to_s != 'xlsx')
              
        else 
            binding.pry
            file = File.join("public", params[:my_file].original_filename)        
            FileUtils.cp tmp.path, file
            Fileparse.parse(params[:my_file])
            FileUtils.rm file
            redirect_to items_path
        end
    end


end 