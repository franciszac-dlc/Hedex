class AddInstitutionToTeacher < ActiveRecord::Migration[5.1]
  def change
    add_reference :teachers, :institution, foreign_key: true
  end
end
