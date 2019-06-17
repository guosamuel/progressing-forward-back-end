class UserProjectsSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :project_id

  has_many :users
  has_many :projects
end
