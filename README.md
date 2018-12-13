# NGS Core Web Application
[![Build Status](https://travis-ci.org/nexusgamingseries/core.svg?branch=master)](https://travis-ci.org/nexusgamingseries/core) [![Maintainability](https://api.codeclimate.com/v1/badges/aa8b36f027a5ed9ac450/maintainability)](https://codeclimate.com/github/nexusgamingseries/core/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/aa8b36f027a5ed9ac450/test_coverage)](https://codeclimate.com/github/nexusgamingseries/core/test_coverage) [![Reviewed by Hound](https://img.shields.io/badge/Reviewed_by-Hound-8E64B0.svg)](https://houndci.com)

Core web app (BE/FE) for NGS, built in Ruby on Rails.

Current Technical Leads:

**[carlosplusplus](https://github.com/carlosplusplus)**  
**[cajuncanuck](https://github.com/cajuncanuck)**

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

## Code Linting

For **Ruby**, we use `rubocop` for code analysis - the bast set of rules are taken from GitHub's style guide and gem here:

[https://github.com/github/rubocop-github](https://github.com/github/)  
[https://github.com/github/rubocop-github/blob/master/STYLEGUIDE.md](https://github.com/github/rubocop-github/blob/master/STYLEGUIDE.md)

You can run `rubocop` via:

```
bundle exec rubocop
```

RuboCop may be able to fix violations (**a**)utomatically via:

```
bundle exec rubocop -a
```

## Guard for Local Dev

In local development, instead of running `rails s` locally, you can run `bin/guard`, which is an event notifier that will auto execute commands based on file changes. Things it will do include:

* Autorun `rubocop` on any Ruby files committed to the project.
* Run any tests ( `*_spec.rb` ) files that are created / updated.
* Spin up `rails s` on `localhost:3000` and autoreload on file changes.

To exit `bin/guard`, type `exit` in the window where it was opened.

## Deployment

Deployment will be done via **[Heroku](https://www.heroku.com/)**.

Sign up for an account using the email associated with your GitHub account and reach out to the tech leads for access and Heroku application names.

### Heroku CLI

To install Heroku on your local machine, follow instructions here:
[https://devcenter.heroku.com/articles/heroku-cli#download-and-install](https://devcenter.heroku.com/articles/heroku-cli#download-and-install)

The recommendation is to install via the installers.

`heroku login` with your credentials from account creation.

### Add Heroku Remotes

Depending on what access you've been granted for deployment, here are the commands you need to run to add the Heroku remotes:

```
heroku git:remote -a <stag> -r staging
heroku git:remote -a <prod> -r production
```

The Heroku remote names ( `<stag>` | `<prod>` ) will be provided by the tech leads.

Running `git remote` should now look like:

```
$ git remote
origin
production
staging
```

### Deploy to Staging / Production

Here are some commands that will be useful for deployment.

#### Deploying Branches

In order to deploy `master` to either environment:

```
git push staging master
git push production master
```

**NOTE**: Deploys to **production** will only be permitted for tech leads.

In order to deploy a non-master branch (e.g. feature or bug fix):

```
git push staging f/new-feature:master
```

Deploying to **staging** is encouraged when developing new features.

Here's an article that highlights the multi-app environment we're using:
[https://devcenter.heroku.com/articles/multiple-environments](https://devcenter.heroku.com/articles/multiple-environments)

#### Executing (Useful) Commands

In order to run commands against the different remotes, staging or production, we use `heroku run` and choose the environment:

```
heroku run rake db:migrate -r staging
heroku run rake db:migrate -r production
```

In order to tail Heroku logs:

```
heroku logs --tail -r staging
heroku logs --tail -r production
```

In order to get a `bash` shell on one of the servers:

```
heroku run bash -r staging
heroku run bash -r production
```

## Environment Variables

If environment variables need to be added, they will be done so via the new Rails 5.2+ paradigm of encrypted secrets:

[Secrets via Encrypted Credentials](https://medium.com/@jonathanmines/hiding-your-secrets-in-rails-5-using-credentials-e37174eede99)

If you need to add an environment variable to the project, please reach out to the tech leads and they can help get this added on your branch (PR).