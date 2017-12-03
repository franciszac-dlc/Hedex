class RemovePrincipalFromSection < ActiveRecord::Migration[5.1]
  def change
    remove_reference :sections, :principal, foreign_key: true
  end
end
