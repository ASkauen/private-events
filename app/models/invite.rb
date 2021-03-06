class Invite < ApplicationRecord
  belongs_to :sender, class_name: 'User', optional: true
  belongs_to :event
  belongs_to :recipient, class_name: 'User', optional: true
end

# == Schema Information
#
# Table name: invites
#
#  id           :integer          not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  event_id     :integer          not null
#  recipient_id :integer          not null
#  sender_id    :integer          not null
#
