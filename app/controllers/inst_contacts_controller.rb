class InstContactsController < ApplicationController
  before_action :authenticate_admin!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_institution
  before_action :set_inst_contact, only: [:show, :edit, :update, :destroy]

  # GET /inst_contacts
  # GET /inst_contacts.json
  def index
    @inst_contacts = @institution.inst_contacts.all
  end

  # GET /inst_contacts/1
  # GET /inst_contacts/1.json
  def show
  end

  # GET /inst_contacts/new
  def new
    @inst_contact = @institution.inst_contacts.new
  end

  # GET /inst_contacts/1/edit
  def edit
  end

  # POST /inst_contacts
  # POST /inst_contacts.json
  def create
    @inst_contact = InstContact.new(inst_contact_params)

    respond_to do |format|
      if @inst_contact.save
        format.html { redirect_to [@institution, @inst_contact], notice: 'Inst contact was successfully created.' }
        format.json { render :show, status: :created, location: @inst_contact }
      else
        format.html { render :new }
        format.json { render json: @inst_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inst_contacts/1
  # PATCH/PUT /inst_contacts/1.json
  def update
    respond_to do |format|
      if @inst_contact.update(inst_contact_params)
        format.html { redirect_to [@institution, @inst_contact], notice: 'Inst contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @inst_contact }
      else
        format.html { render :edit }
        format.json { render json: @inst_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inst_contacts/1
  # DELETE /inst_contacts/1.json
  def destroy
    @inst_contact.destroy
    respond_to do |format|
      format.html { redirect_to institution_inst_contacts_url, notice: 'Inst contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_institution
      @institution = Institution.find(params[:institution_id])
    end
    def set_inst_contact
      @inst_contact = InstContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inst_contact_params
      params.require(:inst_contact).permit(:institution_id, :contact_num)
    end
end
