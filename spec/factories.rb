FactoryGirl.define do
  factory :user do
    name     "Jesse's Mom"
    email    "Hot.Mom@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end