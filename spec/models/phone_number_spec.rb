require 'rails_helper'

RSpec.describe PhoneNumber, type: :model do
  context "associations" do
    it { should belong_to(:contact) }
  end

  context "validations" do
    contact = Contact.create(name: "Test")
    subject { contact.phone_numbers.create(number: "+91 9347866432") }
    it { should validate_presence_of(:number) }
  end
end
