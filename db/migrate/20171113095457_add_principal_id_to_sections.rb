class AddPrincipalIdToSections < ActiveRecord::Migration[5.1]
  def change
    add_reference :sections, :principal, foreign_key: true
  end
end
