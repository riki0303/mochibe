class TasksController < ApplicationController
  before_action :authenticate_user!

  def new
    @task = current_user.tasks.build
  end

  def create
    @task = current_user.tasks.build(task_params)
    if @task.save
      redirect_to root_path, notice: '記録出来ました'
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
