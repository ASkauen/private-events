# frozen_string_literal: true
class Event < ApplicationRecord
  validates :title, presence: true
  validates :desc, presence: true
  validates :date, presence: true

  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
  has_many :attendances, dependent: :destroy
  has_many :attendees, through: :attendances, source: :user

  scope :past, -> {where('date < ?', Time.now)}
  scope :coming, -> {where('date > ?', Time.now)}
end

# == Schema Information
#
# Table name: events
#
#  id         :integer          not null, primary key
#  date       :date
#  desc       :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
# Indexes
#
#  index_events_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
