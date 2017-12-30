module V1
  class PostsController < BaseApiController
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [ :index, :show ]

    # GET /posts
    def index
      @posts = Post.all

      render json: {message: 'success', post: @posts}, status: 200
    end

    # GET /posts/:id
    def show
      post = Post.find(params[:id])

      render json: post, status: 200
    end

    # POST /posts
    def create
      @user_id = current_user.id

      @post = Post.new(post_params)

      if @post.save
          render json: {message: 'success', user_id: @user_id, post: @post}, status: 200
        else
          render json: {errors: @post.errors, user_id: @user_id, message: 'error'}.to_json
        end
    end

    # PATCH/PUT /posts/:id
    def update
      @user_id = current_user.id

      if @post.update(post_params)
        render json: {message: 'success', user_id: @user_id, post: @post}.to_json
      else
        render json: {message: 'error', user_id: @user_id, post: @post, error: @post.errors}.to_json
      end
    end

    # DELETE /posts/:id
    def destroy
      @user_id = current_user.id

      @post.destroy

      if @post.destroy
        render json: {user_id: @user_id, message: 'success'}.to_json
      else
        render json: {message: 'error', user_id: @user_id, post: @post, error: @post.errors}.to_json
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_post
        @post = Post.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def post_params
        params.permit(:title, :subtitle, :description, :content)
      end
  end
end
