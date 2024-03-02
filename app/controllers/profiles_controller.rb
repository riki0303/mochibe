class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    if current_user.profile
      @profile = current_user.profile
    end
    @task = current_user.tasks

    # 下記グラフの為のロジック
    end_date = Date.current
    start_date = 6.day.ago.to_date
    week = (start_date..end_date).to_a
    task_data = current_user.tasks.where(date: start_date..end_date).pluck(:date, :time)

    # 勉強時間がない日も日付を追加
    new_data = []
    week.each do |date|
      date_exist = task_data.find { |entry| entry[0] == date }
      if date_exist
        new_data << date_exist
      else
        new_data << [date, 0.0]
      end
    end

    # 配列→ハッシュへ（jsで処理が分かりやすい為）
    task_data = new_data.map do |item|
      {
        date: item[0],  # 1つ目の要素をdateとして取得
        time: item[1],  # 2つ目の要素をtimeとして取得
      }
    end
    @task_data = task_data.sort_by { |item| item[:date] }

    gon.task_data = @task_data
  end

  def edit
    @profile = current_user.prepare_profile
  end

  def update
    @profile = current_user.prepare_profile

    if @profile.update(profile_params)
      redirect_to profile_path, notice: '更新出来ました'
    else
      flash.now[:alert] = '更新出来ませんでした'
      render :edit
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :bio, :avatar)
  end
end
