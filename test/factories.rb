FactoryGirl.define do
  factory :users do
    name "John"
    email "asd@asd.com"
    password "zxcvbnm"
    about "cool"
    date_of_birth "01/01/1991"
    admin false
  end
end