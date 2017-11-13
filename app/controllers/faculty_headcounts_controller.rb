class FacultyHeadcountsController < ApplicationController
  before_action :set_faculty_headcount, only: [:show, :edit, :update, :destroy]

  # GET /faculty_headcounts
  # GET /faculty_headcounts.json
  def index
    @faculty_headcounts = FacultyHeadcount.all
  end

  # GET /faculty_headcounts/1
  # GET /faculty_headcounts/1.json
  def show
  end

  # GET /faculty_headcounts/new
  def new
    @faculty_headcount = FacultyHeadcount.new
  end

  # GET /faculty_headcounts/1/edit
  def edit
  end

  # POST /faculty_headcounts
  # POST /faculty_headcounts.json
  def create
    @faculty_headcount = FacultyHeadcount.new(faculty_headcount_params)

    respond_to do |format|
      if @faculty_headcount.save
        format.html { redirect_to @faculty_headcount, notice: 'Faculty headcount was successfully created.' }
        format.json { render :show, status: :created, location: @faculty_headcount }
      else
        format.html { render :new }
        format.json { render json: @faculty_headcount.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faculty_headcounts/1
  # PATCH/PUT /faculty_headcounts/1.json
  def update
    respond_to do |format|
      if @faculty_headcount.update(faculty_headcount_params)
        format.html { redirect_to @faculty_headcount, notice: 'Faculty headcount was successfully updated.' }
        format.json { render :show, status: :ok, location: @faculty_headcount }
      else
        format.html { render :edit }
        format.json { render json: @faculty_headcount.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faculty_headcounts/1
  # DELETE /faculty_headcounts/1.json
  def destroy
    @faculty_headcount.destroy
    respond_to do |format|
      format.html { redirect_to faculty_headcounts_url, notice: 'Faculty headcount was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faculty_headcount
      @faculty_headcount = FacultyHeadcount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def faculty_headcount_params
      params.require(:faculty_headcount).permit(:institution_id, :release_date, :acadyr_termno, :bacc, :ms_ma, :phd, :maintainer)
    end
end
