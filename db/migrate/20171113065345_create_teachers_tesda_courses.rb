class CreateTeachersTesdaCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers_tesda_courses do |t|
      t.belongs_to :teacher, index: true
      t.belongs_to :tesda_course, index: true
    end
  end
end
