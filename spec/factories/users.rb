FactoryBot.define do
  factory :user do
    account_id                {'test_id'}
    account_name              {'test'}
    email                     {'test@example'}
    password                  {'000000'}
    password_confirmation     {password}
  end
end