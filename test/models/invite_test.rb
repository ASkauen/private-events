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
require "test_helper"

class InviteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
