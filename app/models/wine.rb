class Wine < ActiveRecord::Base
 VARIETAL= ["Merlot", "Chardonnay", "Moscato", "Classy", "Rose", "Chianti"]
validates :name, :year, :winery, :country, :varietal, presence: true
validates :year,
   numericality: { only_integer: true, greater_than_or_equal_to: 0 },
   unless: "year.blank?"
validates :varietal, inclusion: { in: VARIETAL, message: "must be valid" }
=begin
validates :varietal,
   :inclusion => { in: => valid_varietal]},
   unless: "varietal.blank?"
=end
end
