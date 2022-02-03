class Company < ApplicationRecord

    def contacts
        puts "hello"
        Contact.where({ company_id: read_attribute(:id) })
    end
end
