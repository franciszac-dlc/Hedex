class TesdaCoursesController < ApplicationController
  before_action :set_tesda_course, only: [:show, :edit, :update, :destroy]

  # GET /tesda_courses
  # GET /tesda_courses.json
  def index
    @tesda_courses = TesdaCourse.all
  end

  # GET /tesda_courses/1
  # GET /tesda_courses/1.json
  def show
    @institutions = @tesda_course.institutions
  end

  # GET /tesda_courses/new
  def new
    @tesda_course = TesdaCourse.new
  end

  # GET /tesda_courses/1/edit
  def edit
  end

  # POST /tesda_courses
  # POST /tesda_courses.json
  def create
    @tesda_course = TesdaCourse.new(tesda_course_params)

    respond_to do |format|
      if @tesda_course.save
        format.html { redirect_to @tesda_course, notice: 'Tesda course was successfully created.' }
        format.json { render :show, status: :created, location: @tesda_course }
      else
        format.html { render :new }
        format.json { render json: @tesda_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tesda_courses/1
  # PATCH/PUT /tesda_courses/1.json
  def update
    respond_to do |format|
      if @tesda_course.update(tesda_course_params)
        format.html { redirect_to @tesda_course, notice: 'Tesda course was successfully updated.' }
        format.json { render :show, status: :ok, location: @tesda_course }
      else
        format.html { render :edit }
        format.json { render json: @tesda_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tesda_courses/1
  # DELETE /tesda_courses/1.json
  def destroy
    @tesda_course.destroy
    respond_to do |format|
      format.html { redirect_to tesda_courses_url, notice: 'Tesda course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tesda_course
      @tesda_course = TesdaCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tesda_course_params
      params.require(:tesda_course).permit(:tc_name, :tc_hrs_dur, :tesda_course_sector_id)
    end
end
