require 'csv'
CSV.open("user_name.csv", "ab") do |csv|
  #johnson81;4081;30no86;cj4081;Craig;Johnson;Depot;London
  csv << ["Mahmod97", "0827", "jdw23fa", "msdc97", "Mahmoud", "Dabbagh", "Engineer", "Aleppo"]
  csv << ["Saad37", "0321", "wdas3fa", "msdc37", "Sami", "Mansour", "Sales", "Tokyo"]
end
