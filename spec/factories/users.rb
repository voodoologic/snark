# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    provider "MyString"
    uid ""
    nickname "MyString"
    avatar_image "MyString"
  end
end
