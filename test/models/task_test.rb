# == Schema Information
#
# Table name: tasks
#
#  id         :bigint           not null, primary key
#  date       :date
#  memo       :text
#  time       :float
#  title      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_tasks_on_user_id  (user_id)
#
require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
