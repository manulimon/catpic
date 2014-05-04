FactoryGirl.define do
  factory :user do
    name "Joni"
    password "123"
    password_confirmation "123"
  end

  factory :pic do
    url "http"
  end

  factory :cat do
    name "mau"
  end

end