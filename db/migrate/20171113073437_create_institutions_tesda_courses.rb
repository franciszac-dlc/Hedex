class CreateInstitutionsTesdaCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :institutions_tesda_courses do |t|
      t.belongs_to :institution, index: true
      t.belongs_to :tesda_course, index: true
    end
  end
end
