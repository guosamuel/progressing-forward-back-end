class User < ApplicationRecord
  has_secure_password

  has_many :user_projects
  has_many :projects, through: :user_projects
  has_many :tasks, through: :projects

  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true

end
