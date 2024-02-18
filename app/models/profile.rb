# == Schema Information
#
# Table name: profiles
#
#  id         :bigint           not null, primary key
#  bio        :text
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_profiles_on_user_id  (user_id)
#
class Profile < ApplicationRecord
end