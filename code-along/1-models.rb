# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb

# **************************
# Don't change or move
Company.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file

puts "There are #{Company.all.count} companies"

# 2. create new companies
values = { 
    name: "Apple", 
    url: "https://apple.com", 
    city: "Cupertino", 
    state: "CA"
}
company = Company.new(values)
company.save

puts "There are #{Company.all.count} companies"

values = { 
    name: "Amazon", 
    url: "https://amazon.com", 
    city: "Seattle", 
    state: "WA"
}
company = Company.new(values)
company.save

puts "There are #{Company.all.count} companies"

# values = { 
#     name: "Microsoft", 
#     url: "https://microsoft.com", 
#     city: "Seattle", 
#     state: "WA"
# }
company = Company.new
# company.write_attribute(:name, "Tesla")
company.name = "Telsa"
# company.write_attribute(:url, "https://tesla.com")
company.url = "https://tesla.com"
# company.write_attribute(:city, "Palo Alto")
company.city = "Palo Alto"
# company.write_attribute(:state, "CA")
company.state = "CA"
company.save
#multiple different ways to enter data above

puts "There are #{Company.all.count} companies"

# 3. query companies table

# puts Company.all.inspect

# companies = Company.where({ state: "CA"})
# # where helps filter
# puts companies.inspect

puts Company.where({ state: "CA", name: "Apple"}).count
apple = Company.where({ state: "CA", name: "Apple"})[0]
puts apple.inspect

#cat log/development.log shows the log history of what happened in the code

# 4. read column values from row
# puts apple.read_attribute(:url)
# puts "#{apple.read_attribute(:name)} has a website: #{apple.read_attribute(:url)}""
puts "#{apple.name} has a website #{apple.url}"
apple.slogan = "Think Different"
apple.save

puts apple.inspect

# data name.destroy removes the data
# 5. update attribute value
