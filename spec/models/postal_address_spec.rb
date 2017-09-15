require 'rails_helper'

RSpec.describe PostalAddress, type: :model do
  context "associations" do
    it { should belong_to(:contact) }
  end

  context "validations" do
    contact = Contact.create(name: "Test")
    subject { contact.postal_addresses.create(address: "Street name") }
    it { should validate_presence_of(:address) }
  end
end
