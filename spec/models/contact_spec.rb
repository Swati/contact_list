require 'rails_helper'

RSpec.describe Contact, type: :model do
  context "associations" do
    it { should have_many(:phone_numbers) }
    it { should have_many(:postal_addresses) }
  end

  context "validations" do
    subject { Contact.create(name: "Test") }
    it { should validate_presence_of(:name) }
  end
end
