module TasksHelper

  def task_time_today
    today = Date.today
    tasks_today = @task.where(created_at: today.beginning_of_day..today.end_of_day)
    tasks_today.sum(:time)
  end

  def task_time_week
    today = Date.today
    tasks_week = @task.where(created_at: 1.week.ago.beginning_of_day..today.end_of_day)
    tasks_week.sum(:time)
  end

  def task_time_month
    today = Date.today
    tasks_month = @task.where(created_at: 30.week.ago.beginning_of_day..today.end_of_day)
    tasks_month.sum(:time)
  end
  def task_time_all
    @task.all.sum(:time)
  end
end