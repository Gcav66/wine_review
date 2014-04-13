class Wine < ActiveRecord::Base
valid_varietal = ["Merlot", "Chardonnay", "Moscato", "Classy", "Rose", "Chianti"]
validates :name, :year, :winery, :country, :varietal, presence: true
validates :year,
   numericality: { only_integer: true, greater_than_or_equal_to: 0 },
   unless: "year.blank?"
=begin
validates :varietal,
   :inclusion => { in: => valid_varietal]},
   unless: "varietal.blank?"
=end
end
