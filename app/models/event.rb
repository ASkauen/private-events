class Event < ApplicationRecord
  validates :title, presence: true
  validates :desc, presence: true
  validates :date, presence: true

end
