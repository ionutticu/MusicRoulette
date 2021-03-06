FactoryBot.define do
  factory :video do
    videoid { "MyString" }
    addedby { "MyString" }
    number { 1 }
  end







  factory :personal_statistic do
    conteggio { 1 }
    partenza { "MyString" }
    arrivo { "MyString" }
    email { "MyString" }
  end
    factory :user do
      email                 { Faker::Internet.email}
      password              "password1234"
      password_confirmation "password1234"
  
      factory :admin do
        after(:create) {|user|
          user.add_role(:admin)
          user.remove_role(:user)}
      end
  
      factory :company_user do
        after(:create) {|user|
          user.add_role(:company_user)
          user.remove_role(:user)}
      end
    end
end
