class Principal < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :tesda_courses
  has_many :tesda_course_sectors
  has_many :teachers
  has_many :sections
end
