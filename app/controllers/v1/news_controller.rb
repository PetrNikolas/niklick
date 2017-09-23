module V1
   class NewsController < ApplicationController
        def index 
            respond_to do |format| 
                format.json { render json: {some: 'data'} } 
            end
        end
    end 
end
