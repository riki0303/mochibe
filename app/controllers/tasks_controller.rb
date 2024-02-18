class TasksController < ApplicationController
  before_action :authenticate_user!

  def index
    @tasks = current_user.tasks.all
  end

  def new
    @task = current_user.tasks.build
  end

  def create
    @task = current_user.tasks.build(task_params)
    if @task.save
      redirect_to tasks_path, notice: '記録出来ました'
    else
      flash.now[:alert] = '記録出来ませんでした'
      render :new
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :date, :time, :memo)
  end
end
