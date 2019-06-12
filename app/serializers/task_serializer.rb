class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :percentage, :due_date, :project_id
end
