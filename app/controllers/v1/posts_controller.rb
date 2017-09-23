module V1
  class PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    #before_action :authenticate_user!, except: [:index, :show]

    # GET /posts
    def index
      @posts = Post.all
      json_response(@posts)
    end

    # GET /posts/:id
    def show
      json_response(@posts)
    end

    # GET /posts/:id
    def new
      @post = Post.new
    end

    # GET /posts/:id/edit
    def edit
    end

    # POST /posts
    def create
      @post = Post.new(post_params)

      respond_to do |format|
        if @post.save
          format.json { render :show, status: :created, location: @post }
        else
          format.json { render json: @post.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /posts/:id
    def update
      respond_to do |format|
        if @post.update(post_params)
          format.json { render :show, status: :ok, location: @post }
        else
          format.json { render json: @post.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /posts/:id
    def destroy
      @post.destroy
      respond_to do |format|
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_post
        @post = Post.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def post_params
        params.require(:post).permit(:subtitle, :title, :description, :content)
      end
  end
end
