FactoryGirl.define do
  factory :postal_address do
    contact
    address { |i| "address#{i}" }
  end
end
