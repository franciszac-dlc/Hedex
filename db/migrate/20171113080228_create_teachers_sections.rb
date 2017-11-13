class CreateTeachersSections < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers_sections do |t|
      t.belongs_to :teacher, index: true
      t.belongs_to :section, index: true
    end
  end
end
