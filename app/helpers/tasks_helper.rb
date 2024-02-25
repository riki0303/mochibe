module TasksHelper

  def task_time_today
    @task.all.sum(:time)
  end

  def task_time_week
    tasks_week = @task.where(created_at: 1.week.ago..Time.now)
    tasks_week.sum(:time)
  end

  def task_time_month
    tasks_week = @task.where(created_at: 30.week.ago..Time.now)
    tasks_week.sum(:time)
  end
end