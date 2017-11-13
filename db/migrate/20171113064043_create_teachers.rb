class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :t_fname
      t.string :t_mname
      t.string :t_lnamt

      t.timestamps
    end
  end
end
