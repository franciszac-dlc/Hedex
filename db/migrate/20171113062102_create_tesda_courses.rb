class CreateTesdaCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :tesda_courses do |t|
      t.string :tc_name
      t.integer :tc_hrs_dur
      t.references :tesda_course_sector, foreign_key: true

      t.timestamps
    end
  end
end
