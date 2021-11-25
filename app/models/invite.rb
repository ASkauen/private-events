class Invite < ApplicationRecord
  belongs_to :sender, class_name: 'User'
  belongs_to :event
  has_one :recipient, class_name: 'User'
end

# == Schema Information
#
# Table name: invites
#
#  id           :integer          not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  event_id     :integer
#  recipient_id :integer
#  sender_id    :integer
#
# Indexes
#
#  index_invites_on_event_id      (event_id)
#  index_invites_on_recipient_id  (recipient_id)
#  index_invites_on_sender_id     (sender_id)
#
# Foreign Keys
#
#  event_id      (event_id => events.id)
#  recipient_id  (recipient_id => recipients.id)
#  sender_id     (sender_id => senders.id)
#
