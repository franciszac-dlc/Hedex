class Institution < ApplicationRecord
  belongs_to :region
  has_many :data_records
  has_many :faculty_headcounts
  has_many :tuitions
  has_many :inst_contacts
  has_and_belongs_to_many :tesda_courses
end
