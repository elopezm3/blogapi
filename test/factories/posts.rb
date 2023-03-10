FactoryBot.define do
  FactoryBot.use_parent_strategy = false
  factory :post do
    title { Faker::Lorem.sentence }
    content { Faker::Lorem.paragraph }
    published { [true, false].sample }
    user
  end
end
