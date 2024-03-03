# == Schema Information
#
# Table name: tasks
#
#  id         :bigint           not null, primary key
#  date       :date             not null
#  memo       :text
#  time       :float            not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_tasks_on_user_id  (user_id)
#
class Task < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, length: { maximum: 30 }
  validates :time, presence: true
  validates :date, presence: true

  scope :today, -> { where(date: Date.today) }
  scope :week, -> { where(date: 1.week.ago.beginning_of_day..Date.today.end_of_day) }
  scope :month, -> { where(date: 30.week.ago.beginning_of_day..Date.today.end_of_day) }

end
