class CreateInstContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :inst_contacts do |t|
      t.references :institution, foreign_key: true
      t.string :contact_num

      t.timestamps
    end
  end
end
