require 'csv'
require 'pry'

money = []
crates = []
destination_count = {}
total_revenue = []
planet = []

CSV.foreach("planet_express_logs.csv", headers: true) do |row|
  # puts row.inspect
  money.push row['Money'].to_i
  crates.push row['Crates'].to_i
  total_revenue = (money.reduce :+) * (crates.reduce :+)

  planet = row['Destination']
  current = trips[planet]
  trips[planet] = current + 1

  # current_count = destination_count[planet]
  # new_count = current_count + 1
  # destination_count[planet] = new_count
end

# puts "Total Money: $#{money.reduce :+}"
# puts "Total Crates: #{crates.reduce :+}"
# puts "Total Revenue: $#{total_revenue}"

puts planet
#puts destination_count.keys






# How much money did we make this week?
# DONE: total_revenue

# How many trips did each employee pilot?
# destination mapped to employee

# Fry =  Earth
# Amy =  Mars
# Bender = Uranus
# Leela = Moon, Mercury, Jupiter, Saturn, Pluto,

# How much money did we make broken down by planet? ie.. how much did we make shipping to Earth? Mars? Saturn? etc.
# shipments / destination * (money * crates)

# How much of a bonus did each employee get? (bonuses are paid to employees who pilot the Planet Express)
# Bonus?