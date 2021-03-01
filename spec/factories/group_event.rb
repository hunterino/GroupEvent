FactoryBot.define do
    factory :group_event do
        title { Faker::Lorem.word }
        description { Faker::Lorem.words }
    end
end
