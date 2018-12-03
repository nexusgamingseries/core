# Core Web Application
Core web app (BE/FE) for NGS, built in Ruby on Rails.

## Getting Started

### Prerequisites
- Ruby v. 2.5
- PostgreSQL v. 11

## Installing
### Checkout the Code
```
git clone https://github.com/nexusgamingseries/core.git
```

### Run Bundler
This will install all gem dependencies.
```
bundle install
```

### Create Database
If you are running this for the first time:
```
rake db:create
rake db:migrate
```

If you are not setting up for the first time, you only need to run:
```
rake db:migrate
```

## Starting Server
```
rails s
```

This will start the server and by default will be accessable by browser at `localhost:3000`.

## Tests
We will use rspec for our test suite.
You can run the entire suite with:
```
rspec
```

You can also specify a single file to test.
```
rspec spec/models/user_spec.rb
```

