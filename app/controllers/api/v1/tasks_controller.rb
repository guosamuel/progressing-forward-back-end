class Api::V1::TasksController < ApplicationController

  def index
    @tasks = Task.all
    render json: @tasks
  end

  def create
    new_task = Task.new(project_id: params[:project_id], title: params[:title], description: params[:description], due_date: formatted_date, percentage: 0)
    if new_task.save
      project = Project.find(params[:project_id])
      sum = 0
      project.tasks.each do |task|
        sum += task.percentage
      end
      average = sum/project.tasks.length
      Project.update(project.id, percentage: average)
      updated_project = Project.find(project.id)
      render json: {new_task: new_task, updated_project: ProjectSerializer.new(updated_project)}
    else
      render json: {error: "Please fill out all input fields and/or please select the date from the pop-up calender."}
    end
  end

  def update
    if Task.update(params[:task_id], title: params[:title], description: params[:description], due_date: formatted_date, percentage: params[:percentage]).valid?
      Task.update(params[:task_id], title: params[:title], description: params[:description], due_date: formatted_date, percentage: params[:percentage])
      updated_task = Task.find(params[:task_id])

      project = Project.find(updated_task.project_id)
      sum = 0
      project.tasks.each do |task|
        sum += task.percentage
      end
      average = sum/project.tasks.length
      Project.update(project.id, percentage: average)
      updated_project = Project.find(project.id)
      # byebug
      render json: {updated_task: updated_task, updated_project: ProjectSerializer.new(updated_project), success: "You've successfully updated the task."}
    else
      render json: {error: "Please fill out all input fields and/or please select the date from the pop-up calender."}
    end
  end
end
