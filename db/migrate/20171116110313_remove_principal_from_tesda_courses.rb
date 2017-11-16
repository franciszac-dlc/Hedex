class RemovePrincipalFromTesdaCourses < ActiveRecord::Migration[5.1]
  def change
    remove_reference :tesda_courses, :principal, foreign_key: true
  end
end
