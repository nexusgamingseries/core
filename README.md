# NGS Core Web Application
[![Build Status](https://travis-ci.org/nexusgamingseries/core.svg?branch=master)](https://travis-ci.org/nexusgamingseries/core) [![Reviewed by Hound](https://img.shields.io/badge/Reviewed_by-Hound-8E64B0.svg)](https://houndci.com)

Core web app (BE/FE) for NGS, built in Ruby on Rails.

## Getting Started

### Prerequisites
- Ruby 2.5.3
- PostgreSQL v. 10

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

Seed your local database via:

```
rake db:seed
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

## Guard for Local Dev

In local development, instead of running `rails s` locally, you can run `bin/guard`, which is an event notifier that will auto execute commands based on file changes. Things it will do include:

* Autorun `rubocop` on any Ruby files committed to the project.
* Run any tests ( `*_spec.rb` ) files that are created / updated.
* Spin up `rails s` on `localhost:3000` and autoreload on file changes.

To exit `bin/guard`, type `exit` in the window where it was opened.