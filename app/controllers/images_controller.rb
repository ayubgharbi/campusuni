class ImagesController < ApplicationController
  before_action :set_deust
  before_action :set_matiere
  before_action :set_post
  before_action :set_image, only: [:edit, :update, :destroy]
  skip_before_action :authorize


  def new
    @image = Image.new
  end

  def edit
  end

  def create
    @image = Image.new(image_params)
    @image.deust_id = @deust.id
    @image.matiere_id = @matiere.id
    @image.post_id = @post.id

    respond_to do |format|
      if @image.save
        format.html { redirect_to root_path }
        format.json { render :show, status: :created, location: @image }
      else
        format.html { render :new }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @image.update(image_params)
        format.html { redirect_to root_path }
        format.json { render :show, status: :ok, location: @image }
      else
        format.html { render :edit }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @image.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post 
    	@post = Post.find(params[:post_id])
    end

    def set_matiere
      @matiere = Matiere.find(params[:matiere_id]) 
    end

    def set_deust
      @deust = Deust.find(params[:deust_id]) 
    end

    def set_image
      @image = Image.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.require(:image).permit(:image)
    end
end
	