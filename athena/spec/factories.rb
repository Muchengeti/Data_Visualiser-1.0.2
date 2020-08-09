FactoryBot.define do
  factory :experiment do
    
  end
  factory :dataset do
    figshare_id { Faker::Number.unique.number(6) }
    title { Faker::Lovecraft.deity }
    doi { Faker::IDNumber.valid }
    url_api { Faker::Internet.url }
    url_public { Faker::Internet.url }
    thumbnail { Faker::Internet.url }
    defined_type { 0 }
    published_date { DateTime.now }
  end

  factory :row do
    temperature { Faker::Number.decimal(2) }
    field { Faker::Number.decimal(2) }
    angle { Faker::Number.decimal(2) }
    icw { Faker::Number.decimal(2) }
    ic { Faker::Number.decimal(2) }
    n { Faker::Number.decimal(2) }
    v0 { Faker::Number.decimal(2) }
    v1 { Faker::Number.decimal(2) }
    hall_field { Faker::Number.decimal(2) }
    hall_angle { Faker::Number.decimal(2) }
    set_temperature { Faker::Number.decimal(2) }
    set_field { Faker::Number.decimal(2) }
    set_angle { Faker::Number.decimal(2) }
    
    dataset
  end
end
