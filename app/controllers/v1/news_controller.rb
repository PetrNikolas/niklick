module V1
   class NewsController < ApplicationController
        before_action :set_new, only: [:show, :edit, :update, :destroy]
        skip_before_action :verify_authenticity_token 

        # GET /news
        def index
            @news = New.all
            render json: {message: 'success', news: @news}, status: 200
        end

        private
            # Use callbacks to share common setup or constraints between actions.
            def set_new
                @new = New.find(params[:id])
            end

            # Never trust parameters from the scary internet, only allow the white list through.
            def new_params
                params.permit(:title, :description)
            end
    end 
end
