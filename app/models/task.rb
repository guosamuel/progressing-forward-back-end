class Task < ApplicationRecord
  belongs_to :project

  validates :project_id, presence: true
  validates :title, presence: true, uniquenss: true
  validates :description, presence: true
  validates :due_date, presence: true
end
