module V1
   class NewsController < BaseApiController    
        #before_action :set_new, only: [:show, :edit, :update, :destroy]
        #skip_before_action :verify_authenticity_token 

        before_filter only: :create do |c|
            meth = c.method(:validate_json) 
            meth.call (@json.has_key?('news') && @json['news'].responds_to?(:[]) && @json['news']['name'])
        end

        before_filter only: :update do |c|
            meth = c.method(:validate_json)
            meth.call (@json.has_key?('project'))
        end

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
            if @news.present?
                render nothing: true, status: :conflict
            else
                @news = New.new
                update_values :@news, @json['news']
            end
        end

        # PATCH/PUT /news/:id
        def update
            @news.assign_attributes(@json['news'])

            if @news.save
                render json: @news
            else
                render nothing: true, status: :bad_request
            end
        end

        # POST /news
        #def create
        #    @new = New.new(new_params)
        #
        #    if @new.save
        #        render json: {message: 'success', news: @new}, status: 200
        #    else
        #        render json: {errors: @new.errors, message: 'error'}.to_json
        #    end
        #end

        # PATCH/PUT /news/:id
        #def update
        #    if @new.update(new_params)
        #        render json: {message: 'success', news: @new}.to_json
        #    else
        #        render json: {message: 'error', post: @new, error: @new.errors}.to_json
        #    end
        #end

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
