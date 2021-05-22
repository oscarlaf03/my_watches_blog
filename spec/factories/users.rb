FactoryBot.define do
  factory :user, aliases:[ :author] do
    first_name { Faker::Name.first_name  }
    last_name { Faker::Name.last_name }
    email {Faker::Internet.safe_email(name: instance.first_name.to_s + rand(99..999).to_s)}
    handle { "#{instance.first_name.to_s}#{['.','-','_'].sample}#{instance.last_name.to_s}#{['.','-','_',''].sample}#{rand(11..99)}"}
    password {'123123'}

  end

end
