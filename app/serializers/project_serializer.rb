class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :due_date, :percentage, :project_lead_id

  has_many :tasks
  has_many :users
end
