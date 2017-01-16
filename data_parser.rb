require 'csv'
CSV.foreach("planet_express_logs.csv", headers: true) do |row|
  puts row.inspect # replace with your logic
end