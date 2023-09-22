class Student < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :capstones
  has_many :educations
  has_many :skills
  has_many :experiences
end
