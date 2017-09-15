namespace :db do
  task populate: :environment do
    require 'faker'
    10.times do
      contact = Contact.create!(name: Faker::Name.name)

      3.times do
        contact.phone_numbers.create(number: Faker::PhoneNumber.phone_number)
      end

      2.times do
        contact.postal_addresses.create!(address: Faker::Address.street_address)
      end
    end
  end
end