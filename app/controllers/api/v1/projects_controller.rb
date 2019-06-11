class Api::V1::ProjectsController < ApplicationController

  def index
    @projects = Project.all.filter{ |project| project.users.include?(current_user) }
    render json: @projects
  end

  def create
    month = params[:date][0..1]
    day = params[:date][3..4]
    year = params[:date][6..9]
    formatted_date = "#{year}-#{month}-#{day}"
    new_project = Project.create(title: params[:title], description: params[:description], due_date: formatted_date, percentage: 0)
    render json: new_project
  end

end
