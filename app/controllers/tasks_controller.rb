class TasksController < ApplicationController
  before_action :authenticate_user!

  def new
    @task = current_user.tasks.build
  end

  def create
  end
end
