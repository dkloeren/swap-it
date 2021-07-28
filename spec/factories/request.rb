FactoryBot.define do
  factory :request do
    status { %w[delivered pending in_delivery].sample }
    user
    item
  end
end
