# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

## Seed Apps
apps_array = [
  {name: "facebook", url: "https://fbstatic-a.akamaihd.net/rsrc.php/v2/yh/r/xQ0DwmqUr-m.png"},
  {name: "twitter", url: "https://abs.twimg.com/a/1375759071/t1/img/twitter_web_sprite_icons.png"}
];
apps = App.create(apps_array)
