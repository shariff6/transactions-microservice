FactoryBot.define do
    factory :user do
      name {Faker::Name.name}
      email {Faker::Email.email}
      password {"123456789"}
      password_confirmation {"123456789"}
    end
  end