class Event < ApplicationRecord
  validates :title, presence: true
  validates :desc, presence: true
  validates :date, presence: true

  belongs_to :creator, class_name: "User", foreign_key: "user_id"
end
