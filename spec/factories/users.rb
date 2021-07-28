require 'faker'

FactoryBot.define do
  factory :user do
    first_name {Faker::Name.first_name}
    last_name {Faker::Name.last_name}
    role {['admin','slave'].sample}
    email {Faker::Internet.email}
    password {Faker::Internet.password}
    department
  end
end
