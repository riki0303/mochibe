module ProfilesHelper
  def yesterday_time_change
    today_time = @task.today.sum(:time)
    yesterday_time = @task.yesterday.sum(:time)
    result = today_time - yesterday_time

    if result >= 0
      "+#{result}"
    else
      "-#{result}"
    end
  end
end