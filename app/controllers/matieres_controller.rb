class MatieresController < ApplicationController
  before_action :set_deust
  before_action :set_matiere, only: [:show, :edit, :update, :destroy]
  skip_before_action :authorize, only: [:show]


  
  def show 
    
    
  end 
  
  def new
    @matiere = Matiere.new
  end

  def edit
  end

  def create
    @matiere = Matiere.new(matiere_params)
    @matiere.deust_id = @deust.id

    respond_to do |format|
      if @matiere.save
        format.html { redirect_to @deust }
        format.json { render :show, status: :created, location: @matiere }
      else
        format.html { render :new }
        format.json { render json: @matiere.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @matiere.update(matiere_params)
        format.html { redirect_to @deust }
        format.json { render :show, status: :ok, location: @matiere }
      else
        format.html { render :edit }
        format.json { render json: @matiere.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @matiere.destroy
    respond_to do |format|
      format.html { redirect_to @deust }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_matiere
      @matiere = Matiere.find(params[:id]) 
    end

    def set_deust
      @deust = Deust.find(params[:deust_id]) 
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def matiere_params
      params.require(:matiere).permit(:name, :image, :semester_id)
    end
end
