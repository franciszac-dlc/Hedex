class DataRecordsController < SuperuserController
  before_action :set_institution
  before_action :set_data_record, only: [:show, :edit, :update, :destroy]

  # GET /data_records
  # GET /data_records.json
  def index
    @data_records = @institution.data_records.all
  end

  # GET /data_records/1
  # GET /data_records/1.json
  def show
  end

  # GET /data_records/new
  def new
    @data_record = @institution.data_records.new
  end

  # GET /data_records/1/edit
  def edit
  end

  # POST /data_records
  # POST /data_records.json
  def create
    @data_record = @institution.data_records.new(data_record_params)

    respond_to do |format|
      if @data_record.save
        format.html { redirect_to [@institution, @data_record], notice: 'Data record was successfully created.' }
        format.json { render :show, status: :created, location: @data_record }
      else
        format.html { render :new }
        format.json { render json: @data_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_records/1
  # PATCH/PUT /data_records/1.json
  def update
    respond_to do |format|
      if @data_record.update(data_record_params)
        format.html { redirect_to [@institution, @data_record], notice: 'Data record was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_record }
      else
        format.html { render :edit }
        format.json { render json: @data_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_records/1
  # DELETE /data_records/1.json
  def destroy
    @data_record.destroy
    respond_to do |format|
      format.html { redirect_to [@institution, :data_records], notice: 'Data record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_institution
      @institution = Institution.find(params[:institution_id])
    end
    def set_data_record
      @data_record = DataRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_record_params
      params.require(:data_record).permit(:institution_id, :release_date, :acadyr_termno, :stud_count, :enrolled, :graduated, :cost_per_stud)
    end
end
