class ChangeColumnNameInTeachers < ActiveRecord::Migration[5.1]
  def change
    rename_column :teachers, :t_lnamt, :t_lname
  end
end
