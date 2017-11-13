class InstitutionsInstContactsController < ApplicationController
  before_action :set_institutions_inst_contact, only: [:show, :edit, :update, :destroy]

  # GET /institutions_inst_contacts
  # GET /institutions_inst_contacts.json
  def index
    @institutions_inst_contacts = InstitutionsInstContact.all
  end

  # GET /institutions_inst_contacts/1
  # GET /institutions_inst_contacts/1.json
  def show
  end

  # GET /institutions_inst_contacts/new
  def new
    @institutions_inst_contact = InstitutionsInstContact.new
  end

  # GET /institutions_inst_contacts/1/edit
  def edit
  end

  # POST /institutions_inst_contacts
  # POST /institutions_inst_contacts.json
  def create
    @institutions_inst_contact = InstitutionsInstContact.new(institutions_inst_contact_params)

    respond_to do |format|
      if @institutions_inst_contact.save
        format.html { redirect_to @institutions_inst_contact, notice: 'Institutions inst contact was successfully created.' }
        format.json { render :show, status: :created, location: @institutions_inst_contact }
      else
        format.html { render :new }
        format.json { render json: @institutions_inst_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /institutions_inst_contacts/1
  # PATCH/PUT /institutions_inst_contacts/1.json
  def update
    respond_to do |format|
      if @institutions_inst_contact.update(institutions_inst_contact_params)
        format.html { redirect_to @institutions_inst_contact, notice: 'Institutions inst contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @institutions_inst_contact }
      else
        format.html { render :edit }
        format.json { render json: @institutions_inst_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /institutions_inst_contacts/1
  # DELETE /institutions_inst_contacts/1.json
  def destroy
    @institutions_inst_contact.destroy
    respond_to do |format|
      format.html { redirect_to institutions_inst_contacts_url, notice: 'Institutions inst contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_institutions_inst_contact
      @institutions_inst_contact = InstitutionsInstContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def institutions_inst_contact_params
      params.fetch(:institutions_inst_contact, {})
    end
end
