FactoryGirl.define do
  factory :app do |f|
    f.sequence(:name)       {|n| "facebook"}
    f.url                   "https://fbstatic-a.akamaihd.net/rsrc.php/v2/yh/r/xQ0DwmqUr-m.png"
  end
end
