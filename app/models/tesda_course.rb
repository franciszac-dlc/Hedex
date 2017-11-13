class TesdaCourse < ApplicationRecord
  belongs_to :tesda_course_sector
  has_and_belongs_to_many :teacher
end
