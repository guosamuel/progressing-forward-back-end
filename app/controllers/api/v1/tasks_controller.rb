class Api::V1::TasksController < ApplicationController

  def index
    @tasks = Task.all
    render json: @tasks
  end

  def create
    month = params[:date][0..1]
    day = params[:date][3..4]
    year = params[:date][6..9]
    formatted_date = "#{year}-#{month}-#{day}"
    new_task = Task.new(project_id: params[:project_id], title: params[:title], description: params[:description], due_date: formatted_date, percentage: 0)
    if new_task.save
      render json: new_task
    else
      render json: {error: "Please fill out all input fields."}
    end
  end

  def update
    month = params[:date][0..1]
    day = params[:date][3..4]
    year = params[:date][6..9]
    formatted_date = "#{year}-#{month}-#{day}"
    if Task.update(params[:task_id], title: params[:title], description: params[:description], due_date: formatted_date, percentage: params[:percentage])
      Task.update(params[:task_id], title: params[:title], description: params[:description], due_date: formatted_date, percentage: params[:percentage])
      updated_task = Task.find(params[:task_id])
      render json: updated_task
    else
      render json: {error: "Please fill out all input fields."}
  end
end
