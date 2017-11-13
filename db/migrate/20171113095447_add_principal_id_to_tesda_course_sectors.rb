class AddPrincipalIdToTesdaCourseSectors < ActiveRecord::Migration[5.1]
  def change
    add_reference :tesda_course_sectors, :principal, foreign_key: true
  end
end
