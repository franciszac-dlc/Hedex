class CreateRegionalDataRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :regional_data_records do |t|
      t.references :region, foreign_key: true
      t.date :release_date
      t.integer :acadyr
      t.float :cost_per_stud
      t.integer :private_nonsec
      t.integer :private_sec
      t.integer :special_HEI
      t.integer :other_govt_schools
      t.integer :ched_supervised_institution
      t.integer :local_colleges_and_uni
      t.string :SUCs_main
      t.string :integer
      t.integer :SUCs_sat

      t.timestamps
    end
  end
end
