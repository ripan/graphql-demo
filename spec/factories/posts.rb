FactoryBot.define do
  factory :post do
    user
    title{ FFaker::Lorem.sentence }
    body{ FFaker::Lorem.paragraph }
  end
end
