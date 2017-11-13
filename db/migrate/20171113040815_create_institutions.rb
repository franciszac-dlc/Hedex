class CreateInstitutions < ActiveRecord::Migration[5.1]
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :inst_class
      t.string :address_province
      t.string :address_municipality
      t.string :address_street_no
      t.string :cong_distr_num

      t.timestamps
    end
  end
end
