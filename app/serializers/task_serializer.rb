class TaskSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :percentage, :due_date
end
