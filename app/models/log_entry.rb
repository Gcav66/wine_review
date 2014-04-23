class LogEntry < ActiveRecord::Base
  has_many :reviews
end
