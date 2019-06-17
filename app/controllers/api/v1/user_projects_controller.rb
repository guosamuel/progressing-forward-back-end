class Api::V1::UserProjectsController < ApplicationController

  def index
    @user_projects = UserProject.all
    render json: @user_projects
  end

  def create
    selected_collaborators = params[:selectedCollaborators]
    added_collaborators = []
    selected_collaborators.each do |collaborator|
      UserProject.create(user_id: collaborator["value"], project_id: params[:projectId])
      find_collaborator = User.find(collaborator["value"])
      added_collaborators << UserSerializer.new(find_collaborator)
    end
    render json: {success: "Successfully added collaborator(s)!", added_collaborators: added_collaborators}
  end
end
