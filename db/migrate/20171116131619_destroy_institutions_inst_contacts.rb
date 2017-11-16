class DestroyInstitutionsInstContacts < ActiveRecord::Migration[5.1]
  def change
    drop_table :institutions_inst_contacts
  end
end
