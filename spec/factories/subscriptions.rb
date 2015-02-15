FactoryGirl.define do
  factory :subscription do
    user
    game
    threshold_price 5
  end

end
