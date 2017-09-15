FactoryGirl.define do
  sequence(:random_id) { |n| @random_ids ||= (1000000000..9000000000).to_a.shuffle; @random_ids[n] }

  factory :phone_number do
    contact
    number "+91 #{FactoryGirl.generate(:random_id)}"
  end
end
