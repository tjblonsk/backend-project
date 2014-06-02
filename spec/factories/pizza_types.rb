# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :pizza_type do
    name "MyString"
    price 1
    order_item 1
  end
end
