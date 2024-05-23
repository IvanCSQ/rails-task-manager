class TasksController < ApplicationController
before_action :set_task_id, only:[:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    # @task = Task.find(params[:id])
  end

  def new
    # create blank instance
    @task = Task.new
    # raise
  end

  def create
    task = Task.new(task_params)

    if task.save
      redirect_to task_path(task)
    end
  end

  def edit
    # @task = Task.find(params[:id])
    # raise
  end

  def update
    # @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    # @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path, status: :see_other
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task_id
    @task = Task.find(params[:id])
  end
end
