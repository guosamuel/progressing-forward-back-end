class Api::V1::ProjectsController < ApplicationController

  def index
    # @projects = Project.all.filter{ |project| project.users.include?(current_user) }
    # render json: @projects

    render json: current_user.projects
  end

  def create
    month = params[:date][0..1]
    day = params[:date][3..4]
    year = params[:date][6..9]
    formatted_date = "#{year}-#{month}-#{day}"
    new_project = Project.new(title: params[:title], description: params[:description], due_date: formatted_date, percentage: 0, project_lead_id: params[:user_id])
    if new_project.save
      UserProject.create(user_id: params[:user_id], project_id: new_project.id)
      render json: new_project
    else
      render json: {error: "Please fill out all input fields."}
    end
  end

end
