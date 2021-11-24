class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :event
end

# == Schema Information
#
# Table name: attendances
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :integer
#  user_id    :integer
#
# Indexes
#
#  index_attendances_on_event_id  (event_id)
#  index_attendances_on_user_id   (user_id)
#
# Foreign Keys
#
#  event_id  (event_id => events.id)
#  user_id   (user_id => users.id)
#
