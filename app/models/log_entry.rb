class LogEntry < ActiveRecord::Base
  belongs_to :wine
  RATING = 1..5
  validates :name, :rating, :comment, :location, :tasted_on, presence: true
  validates :rating, inclusion: { in: RATING, message: "must be from #{RATING.first} to #{RATING.last}"}
  
end
