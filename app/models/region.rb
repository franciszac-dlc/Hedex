class Region < ApplicationRecord
  has_many :regional_data_records
  has_many :institutions
end
