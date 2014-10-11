require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.email { Faker::Internet.email }
    f.password { Faker::Internet.password(8) }
    f.display_name { Faker::Internet.user_name}
  end
end
