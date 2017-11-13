class CreateFacultyHeadcounts < ActiveRecord::Migration[5.1]
  def change
    create_table :faculty_headcounts do |t|
      t.references :institution, foreign_key: true
      t.date :release_date
      t.string :acadyr_termno
      t.integer :bacc
      t.integer :ms_ma
      t.integer :phd
      t.string :maintainer

      t.timestamps
    end
  end
end
