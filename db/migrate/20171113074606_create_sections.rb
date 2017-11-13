class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.string :name
      t.integer :head_count
      t.integer :year
      t.integer :grade_level
      t.references :institution, foreign_key: true

      t.timestamps
    end
  end
end
