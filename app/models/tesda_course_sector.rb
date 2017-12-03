class TesdaCourseSector < ApplicationRecord
  has_many :tesda_courses, dependent: :delete_all
end
