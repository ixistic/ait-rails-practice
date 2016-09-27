FactoryGirl.define do

  factory :role, class: Role do
    name "Admin"
  end

  factory :user, class: User do
    email "admin@admin.com"
    password "password"
    password_confirmation "password"
    role
  end
end