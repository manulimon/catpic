class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :ensure_that_signed_in, except: [:index, :show]
  before_action :has_pics, only: [:new, :create]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all
    @pics = Pic.all
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @pics = Pic.all
  end

  # GET /posts/new
  def new
    @post = Post.new
    @pics = Pic.all.select{ |b| b.user_id == current_user.id }
  end

  # GET /posts/1/edit
  def edit
    @pics = Pic.all.select{ |b| b.user_id == current_user.id }
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.user = current_user

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @post }
      else
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url }
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
      params.require(:post).permit(:user_id, :pic_id, :text, :title)
    end

    def has_pics
      redirect_to new_pic_path, notice:'add pics before making a post' if !current_user.pics.any?
    end
end
