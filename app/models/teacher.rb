class Teacher < ApplicationRecord
  belongs_to :principal
  has_and_belongs_to_many :tesda_courses
  has_and_belongs_to_many :sections
end
