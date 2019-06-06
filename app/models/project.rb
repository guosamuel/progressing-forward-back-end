class Project < ApplicationRecord
  has_many :user_projects
  has_many :users, through: :user_projects
  has_many :tasks

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :due_date, presence: true

end
