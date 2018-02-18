module V1
  class PostsController < BaseApiController
    before_action :authenticate_user!

    # PATCH/PUT /posts/:id
    def update
      set_current_user

      if @post.update(post_params)
        render json: {message: 'success', user_id: @user_id, post: @post}.to_json
      else
        render json: {message: 'error', user_id: @user_id, post: @post, error: @post.errors}.to_json
      end
    end


    private
      # Use callbacks to share common setup or constraints between actions.
      def set_current_user
        @user_id = current_user.id
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def post_params
        params.permit(:title, :subtitle, :description, :content)
      end
  end
end
