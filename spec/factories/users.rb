require 'faker'

FactoryBot.define do
  factory :user do
    first_name {'Dom'}
    last_name {'Inant'}
    role {['admin','slave'].sample}
    email {Faker::Internet.email}
    password {Faker::Internet.password}
    department
  end
end
