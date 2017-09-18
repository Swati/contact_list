FactoryGirl.define do
  factory :contact do
    sequence(:name) { |i| "contact#{i}" }
  end
end


