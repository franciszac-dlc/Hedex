class CreateTesdaCourseSectors < ActiveRecord::Migration[5.1]
  def change
    create_table :tesda_course_sectors do |t|
      t.string :tcs_name
      t.string :tcs_desc

      t.timestamps
    end
  end
end
