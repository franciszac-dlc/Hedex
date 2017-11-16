class Institution < ApplicationRecord
  belongs_to :region
  has_many :data_record
  has_many :faculty_headcount
  has_many :tuition
  has_many :inst_contact
  has_and_belongs_to_many :tesda_course
end
