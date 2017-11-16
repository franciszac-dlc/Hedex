class RemoveIntegerFromRegionalDataRecords < ActiveRecord::Migration[5.1]
  def change
    remove_column :regional_data_records, "integer", :string
  end
end
