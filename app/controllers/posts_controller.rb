class PostsController < ApplicationController
  before_action :set_deust
  before_action :set_semester
  before_action :set_matiere
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def show 
  end 
  
  def new
    @post = Post.new
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    @post.deust_id = @deust.id
    @post.semester_id = @semester.id
    @post.matiere_id = @matiere.id

    respond_to do |format|
      if @post.save
        format.html { redirect_to @matiere }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @matiere }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to @matiere }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    
    def set_post 
    	@post = Post.find(params[:id])
    end

    def set_matiere
      @matiere = Matiere.find(params[:matiere_id]) 
    end

    def set_deust
      @deust = Deust.find(params[:deust_id]) 
    end

    def set_semester
      @semester = Semester.find(params[:semester_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:name, :category_id)
    end
end
