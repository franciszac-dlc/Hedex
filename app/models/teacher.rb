class Teacher < ApplicationRecord
  belongs_to :institution
  has_and_belongs_to_many :tesda_courses
  has_and_belongs_to_many :sections
end
