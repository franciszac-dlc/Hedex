class CreateInstitutionsInstContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :institutions_inst_contacts do |t|
    	t.belongs_to :institution, index: true
    	t.belongs_to :inst_contact, index: true
    end
  end
end
