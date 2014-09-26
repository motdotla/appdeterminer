# appdeterminer

```
bundle install
bin/rake db:migrate
bin/rake db:seed
bin/rails s
```

Visit <http://localhost:3000>

## Development Setup

```
brew install chruby
```

Then add the following to the bottom of your .bashrc or .zshrc file.

```
source /usr/local/opt/chruby/share/chruby/chruby.sh
```

Now you should have the chruby command available to you.

```
which chruby
```

Next, install ruby-install.

```
brew install ruby-install
```

Then install the latest ruby version.

```
ruby-install ruby 2.1.0
```

Then install rails.

```
gem install rails
```

Then run the application.

```
bundle install
bin/rake db:seed
bin/rails s
```

### Installing Postgres app

Download it [here](http://postgresapp.com/).

### Run Tests

```
bin/rake db:create db:migrate
bin/rspec
```
