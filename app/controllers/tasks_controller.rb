class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    # create blank instance
    @task = Task.new
  end

  def create
    task = Task.new(task_params)

    if task.save
      redirect_to task_path(task)
    end
  end
end

private

def task_params
  raise
  params.require(:task).permit(:title, :details)
end
