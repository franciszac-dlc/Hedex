class AddRegionToInstitutions < ActiveRecord::Migration[5.1]
  def change
    add_reference :institutions, :region, foreign_key: true
  end
end
