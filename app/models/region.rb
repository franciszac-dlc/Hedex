class Region < ApplicationRecord
	has_many :regional_data_record
	has_many :institution
end
