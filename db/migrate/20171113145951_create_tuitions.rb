class CreateTuitions < ActiveRecord::Migration[5.1]
  def change
    create_table :tuitions do |t|
      t.references :institution, foreign_key: true
      t.date :release_date
      t.string :acadyr_termno
      t.float :bacc
      t.float :ms_ma
      t.float :phd

      t.timestamps
    end
  end
end
