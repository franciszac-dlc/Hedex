class TesdaCourseSector < ApplicationRecord
  belongs_to :principal
  has_many :tesda_course
end
