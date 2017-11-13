class CreateDataRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :data_records do |t|
      t.references :institution, foreign_key: true
      t.date :release_date
      t.string :acadyr_termno
      t.integer :stud_count
      t.integer :enrolled
      t.integer :graduated
      t.float :cost_per_stud

      t.timestamps
    end
  end
end
