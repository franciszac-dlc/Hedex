class TesdaCourseSectorsController < SuperuserController
  before_action :set_tesda_course_sector, only: [:show, :edit, :update, :destroy]

  # GET /tesda_course_sectors
  # GET /tesda_course_sectors.json
  def index
    @tesda_course_sectors = TesdaCourseSector.all
  end

  # GET /tesda_course_sectors/1
  # GET /tesda_course_sectors/1.json
  def show
    @tesda_courses = @tesda_course_sector.tesda_courses
  end

  # GET /tesda_course_sectors/new
  def new
    @tesda_course_sector = TesdaCourseSector.new
  end

  # GET /tesda_course_sectors/1/edit
  def edit
  end

  # POST /tesda_course_sectors
  # POST /tesda_course_sectors.json
  def create
    @tesda_course_sector = TesdaCourseSector.new(tesda_course_sector_params)

    respond_to do |format|
      if @tesda_course_sector.save
        format.html { redirect_to @tesda_course_sector, notice: 'Tesda course sector was successfully created.' }
        format.json { render :show, status: :created, location: @tesda_course_sector }
      else
        format.html { render :new }
        format.json { render json: @tesda_course_sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tesda_course_sectors/1
  # PATCH/PUT /tesda_course_sectors/1.json
  def update
    respond_to do |format|
      if @tesda_course_sector.update(tesda_course_sector_params)
        format.html { redirect_to @tesda_course_sector, notice: 'Tesda course sector was successfully updated.' }
        format.json { render :show, status: :ok, location: @tesda_course_sector }
      else
        format.html { render :edit }
        format.json { render json: @tesda_course_sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tesda_course_sectors/1
  # DELETE /tesda_course_sectors/1.json
  def destroy
    @tesda_course_sector.destroy
    respond_to do |format|
      format.html { redirect_to tesda_course_sectors_url, notice: 'Tesda course sector was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tesda_course_sector
      @tesda_course_sector = TesdaCourseSector.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tesda_course_sector_params
      params.require(:tesda_course_sector).permit(:tcs_name, :tcs_desc)
    end
end
