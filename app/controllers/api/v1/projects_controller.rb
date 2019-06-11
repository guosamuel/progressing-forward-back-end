class Api::V1::ProjectsController < ApplicationController

  def index
    @projects = Project.all.filter{ |project| project.users.include?(current_user) }
    render json: @projects
  end

end
