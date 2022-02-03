# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file
apple = Company.where({ name: "Apple"}) [0]
puts apple.id
amazon = Company.where({ name: "Amazon"})[0]
tesla = Company.where({ name: "Tesla"})[0]

# 2. create 1-2 new contacts for each company (they can be made up)

values = {
    first_name: "Tim",
    last_name: "Cook",
    email: "tim@apple.com",
    phone: "777-777-7777".
    company_id: 58
}

contact = Contact.new(values)
contact.save

puts Contact.new(values)


# 2. create 1-2 new contacts for each company (they can be made up)

# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:






# ---------------------------------
# Contacts: 4
puts "Contacts: #{Contact.all.count}"
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com
contacts = Contact.all
for contact in contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.email}"
end
#none of this fucking code will work right now