class AddNameToPrincipals < ActiveRecord::Migration[5.1]
  def change
    add_column :principals, :p_name, :string
  end
end
