class SemestersController < ApplicationController
  before_action :set_semester, only: [:edit, :update, :destroy]
  before_action :set_deust

  def new
    @semester = Semester.new
  end

  def edit
  end

  def create
    @semester = Semester.new(semester_params)
    @semester.deust_id = @deust.id

    respond_to do |format|
      if @semester.save
        format.html { redirect_to root_path }
        format.json { render :show, status: :created, location: @semester }
      else
        format.html { render :new }
        format.json { render json: @semester.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @semester.update(semester_params)
        format.html { redirect_to root_path }
        format.json { render :show, status: :ok, location: @semester }
      else
        format.html { render :edit }
        format.json { render json: @semester.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @semester.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_semester
      @semester = Semester.find(params[:id])
    end

    def set_deust
      @deust = Deust.find(params[:deust_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def semester_params
      params.require(:semester).permit(:name)
    end
end
