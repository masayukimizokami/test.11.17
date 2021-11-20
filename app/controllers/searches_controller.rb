class SearchesController < ApplicationController

    class SearchesController < ApplicationController
        def new
            @search = Search.new
            #@categories = Book.uniq.pluck(:category)
        end
    
        def create
            @search = Search.create(search_params)
            redirect_to @search
        end
    
        def show
            @search = Search.find(params[:id])
            
        end
    
        private
    
        def search_params
           params.require(:room).permit(:id, :room_name, :room_price, :room_address, :room_id)
        end
    
    end
    
end
