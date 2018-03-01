class PdfsController < ApplicationController
  before_action :set_deust
  before_action :set_matiere
  before_action :set_post
  before_action :set_pdf, only: [:edit, :update, :destroy]
  skip_before_action :authorize


  def new
    @pdf = Pdf.new
  end

  def edit
  end

  def create
    @pdf = Pdf.new(image_params)
    @pdf.deust_id = @deust.id
    @pdf.matiere_id = @matiere.id
    @pdf.post_id = @post.id

    respond_to do |format|
      if @pdf.save
        format.html { redirect_to root_path }
        format.json { render :show, status: :created, location: @pdf }
      else
        format.html { render :new }
        format.json { render json: @pdf.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @pdf.update(image_params)
        format.html { redirect_to root_path }
        format.json { render :show, status: :ok, location: @pdf }
      else
        format.html { render :edit }
        format.json { render json: @pdf.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @pdf.destroy
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

    def set_pdf
      @pdf = Pdf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.require(:pdf).permit(:link)
    end
end
