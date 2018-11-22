class DeustsController < ApplicationController
  before_action :set_deust, only: [:show, :edit, :update, :destroy]
  skip_before_action :authorize, only: [:index, :show]

  def index
    @deusts = Deust.all
    @semesters = Semester.all
    @matieres = Matiere.all
  end 

  def show
    @semesters = @deust.semesters
  end

  def new
    @deust = Deust.new
  end

  def edit
  end

  def create
    @deust = Deust.new(deust_params)

    respond_to do |format|
      if @deust.save
        format.html { redirect_to admin_index_path }
        format.json { render :show, status: :created, location: @deust }
      else
        format.html { render :new }
        format.json { render json: @deust.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @deust.update(deust_params)
        format.html { redirect_to admin_index_path }
        format.json { render :show, status: :ok, location: @deust }
      else
        format.html { render :edit }
        format.json { render json: @deust.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @deust.destroy
    respond_to do |format|
      format.html { redirect_to admin_index_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deust
      @deust = Deust.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deust_params
      params.require(:deust).permit(:name, :description)
    end

	
end
