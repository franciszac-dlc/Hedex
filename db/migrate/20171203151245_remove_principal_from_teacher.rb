class RemovePrincipalFromTeacher < ActiveRecord::Migration[5.1]
  def change
    remove_reference :teachers, :principal, foreign_key: true
  end
end
