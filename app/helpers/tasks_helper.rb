module TasksHelper

  def task_time_today

    tasks_today = @task.today.sum(:time)
  end

  def task_time_week
    tasks_week = @task.week.sum(:time)
  end

  def task_time_month
    tasks_month = @task.month.sum(:time)
  end

  def task_time_all
    @task.all.sum(:time)
  end
end