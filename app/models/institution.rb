class Institution < ApplicationRecord
  belongs_to :region
  has_many :data_records, dependent: :delete_all
  has_many :faculty_headcounts, dependent: :delete_all
  has_many :tuitions, dependent: :delete_all
  has_many :inst_contacts, dependent: :delete_all
  has_and_belongs_to_many :tesda_courses
  has_many :sections, dependent: :delete_all
end
