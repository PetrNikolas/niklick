module V1
   class NewsController < ApplicationController
        before_action :set_new, only: [:show, :edit, :update, :destroy]
        skip_before_action :verify_authenticity_token 

        # GET /news
        def index
            @news = New.all
            render json: {message: 'success', news: @news}, status: 200
        end

        # GET /news/:id
        def show
            news = New.find(params[:id])
            render json: news, status: 200
        end

        # POST /news
        def create
            @new = New.new(new_params)

            if @new.save
                render json: {message: 'success', news: @new}, status: 200
            else
                render json: {errors: @new.errors, message: 'error'}.to_json
            end
        end

        # PATCH/PUT /news/:id
        def update
            if @new.update(new_params)
                render json: {message: 'success', news: @new}.to_json
            else
                render json: {message: 'error', post: @new, error: @new.errors}.to_json
            end
        end

        # DELETE /news/:id
        def destroy
            @new.destroy

            if @new.destroy
                render json: {message: 'success'}.to_json
            else
                render json: {message: 'error', news: @new, error: @new.errors}.to_json
            end
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
