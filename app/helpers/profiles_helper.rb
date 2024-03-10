module ProfilesHelper
  def yesterday_time_change
    today_time = @task.today.sum(:time)
    yesterday_time = @task. yesterday.sum(:time)
    today_time - yesterday_time
  end
end