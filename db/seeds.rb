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
  {name: "twitter", url: "https://abs.twimg.com/a/1375759071/t1/img/twitter_web_sprite_icons.png"},
  {name: "hn", url: "https://news.ycombinator.com/y18.gif"},
  {name: "linkedin", url: "http://s.c.lnkd.licdn.com/scds/common/u/images/logos/logo_linkedin_flat_white_98x25.png"},
  {name: "pandora", url: "http://www.pandora.com/img/pandora-logo-splash-538x110.png"},
  {name: "google", url: "https://www.google.com.au/images/srpr/logo4w.png"},
  {name: "walmart", url: "http://i2.walmartimages.com/i/header_wide/walmart_logo_214x54.gif"},
  {name: "wikipedia", url: "http://upload.wikimedia.org/wikipedia/en/b/bc/Wiki.png"},
  {name: "bbc", url: "http://static.bbci.co.uk/frameworks/barlesque/2.50.2/desktop/3.5/img/blocks/light.png"},
  {name: "yahoo", url: "http://l.yimg.com/ao/i/mp/properties/frontpage/eclipse/img/y7-sprite-new.s5804.png"}
];
apps = App.create(apps_array)
