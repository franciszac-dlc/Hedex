class TuitionsController < ApplicationController
  before_action :set_institution
  before_action :set_tuition, only: [:show, :edit, :update, :destroy]

  # GET /tuitions
  # GET /tuitions.json
  def index
    @tuitions = @institution.tuitions.all
  end

  # GET /tuitions/1
  # GET /tuitions/1.json
  def show
  end

  # GET /tuitions/new
  def new
    @tuition = @institution.tuitions.new
  end

  # GET /tuitions/1/edit
  def edit
  end

  # POST /tuitions
  # POST /tuitions.json
  def create
    @tuition = @institution.tuitions.new(tuition_params)

    respond_to do |format|
      if @tuition.save
        format.html { redirect_to [@institution, @tuition], notice: 'Tuition was successfully created.' }
        format.json { render :show, status: :created, location: @tuition }
      else
        format.html { render :new }
        format.json { render json: @tuition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tuitions/1
  # PATCH/PUT /tuitions/1.json
  def update
    respond_to do |format|
      if @tuition.update(tuition_params)
        format.html { redirect_to [@institution, @tuition], notice: 'Tuition was successfully updated.' }
        format.json { render :show, status: :ok, location: @tuition }
      else
        format.html { render :edit }
        format.json { render json: @tuition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tuitions/1
  # DELETE /tuitions/1.json
  def destroy
    @tuition.destroy
    respond_to do |format|
      format.html { redirect_to institution_tuitions_url, notice: 'Tuition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_institution
      @institution = Institution.find(params[:institution_id])
    end
    def set_tuition
      @tuition = Tuition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tuition_params
      params.require(:tuition).permit(:institution_id, :release_date, :acadyr_termno, :bacc, :ms_ma, :phd)
    end
end
