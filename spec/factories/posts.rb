FactoryBot.define do
  factory :post do
    title { Faker::Hipster.sentence(word_count: 1) }
    content { Faker::Hipster.paragraph_by_chars(characters: 256, supplemental: false) + " " + Faker::Hipster.paragraph_by_chars(characters: 256, supplemental: false) }
    cover { }
    author
  end
end
