# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database

# 1. insert new rows in the contacts table with relationship to a company

puts "there are #{Company.all.count}... companies"
puts "there are #{Contact.all.count}... contacts "

apple = Company.find_by({"name"=>"Apple"})
puts apple.inspect

contact = Contact.new
contact["first_name"] = "Tim"
contact["last_name"] = "Cook"
contact["email"] = "tim@apple.com"
contact["company_id"] = 1
contact.save

puts contact.inspect

apple = Company.find_by({"name"=>"Apple"})
puts apple.inspect

contact = Contact.new
contact["first_name"] = "Greg"
contact["last_name"] = "Smith"
contact["email"] = "greg@apple.com"
contact["company_id"] = 1
contact.save

puts contact.inspect

amazon = Company.find_by({"name"=>"Amazon"})
puts apple.inspect

contact = Contact.new
contact["first_name"] = "Jeff"
contact["last_name"] = "Bezos"
contact["email"] = "Jeff@apple.com"
contact["company_id"] = 1
contact.save

puts contact.inspect

# 2. How many contacts work at Apple?

apple_contacts = Contact.where({"company_id"=>apple"id"})
puts "apple contacts: #{apple_contacts.count}"

# 3. What is the full name of each contact who works at Apple?

for contact in apple_contacts
    first_name = contact["first_name"]
    last_name = contact["last_name"]
    full_name = "#{first_name} #{last_name}"
    puts "--- #{full_name}"
end