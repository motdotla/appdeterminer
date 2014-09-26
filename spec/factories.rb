FactoryGirl.define do
  factory :app do
    name "facebook"
    url  "https://fbstatic-a.akamaihd.net/rsrc.php/v2/yh/r/xQ0DwmqUr-m.png"
  end

  factory :user do
    email "user0@mailinator.com"
  end
end
