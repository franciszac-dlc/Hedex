class RegionalDataRecordsController < ApplicationController
  before_action :set_regional_data_record, only: [:show, :edit, :update, :destroy]

  # GET /regional_data_records
  # GET /regional_data_records.json
  def index
    @regional_data_records = RegionalDataRecord.all
  end

  # GET /regional_data_records/1
  # GET /regional_data_records/1.json
  def show
  end

  # GET /regional_data_records/new
  def new
    @regional_data_record = RegionalDataRecord.new
  end

  # GET /regional_data_records/1/edit
  def edit
  end

  # POST /regional_data_records
  # POST /regional_data_records.json
  def create
    @regional_data_record = RegionalDataRecord.new(regional_data_record_params)

    respond_to do |format|
      if @regional_data_record.save
        format.html { redirect_to @regional_data_record, notice: 'Regional data record was successfully created.' }
        format.json { render :show, status: :created, location: @regional_data_record }
      else
        format.html { render :new }
        format.json { render json: @regional_data_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regional_data_records/1
  # PATCH/PUT /regional_data_records/1.json
  def update
    respond_to do |format|
      if @regional_data_record.update(regional_data_record_params)
        format.html { redirect_to @regional_data_record, notice: 'Regional data record was successfully updated.' }
        format.json { render :show, status: :ok, location: @regional_data_record }
      else
        format.html { render :edit }
        format.json { render json: @regional_data_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regional_data_records/1
  # DELETE /regional_data_records/1.json
  def destroy
    @regional_data_record.destroy
    respond_to do |format|
      format.html { redirect_to regional_data_records_url, notice: 'Regional data record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regional_data_record
      @regional_data_record = RegionalDataRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regional_data_record_params
      params.require(:regional_data_record).permit(:region_id, :release_date, :acadyr, :cost_per_stud, :private_nonsec, :private_sec, :special_HEI, :other_govt_schools, :ched_supervised_institution, :local_colleges_and_uni, :SUCs_main, :integer, :SUCs_sat)
    end
end
