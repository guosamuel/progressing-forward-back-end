class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :due_date, :percentage

  has_many :tasks
  has_many :users
end
