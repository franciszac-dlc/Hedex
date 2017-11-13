class AddPrincipalIdToTesdaCourses < ActiveRecord::Migration[5.1]
  def change
    add_reference :tesda_courses, :principal, foreign_key: true
  end
end
