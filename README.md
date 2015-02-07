# Feedy

Feedy is an engine that lets you collect and view user feedback with no hassle.

Embed feedy in your view, and users will see a feedback button they can toggle in the bottom-right corner of the browser screen.

## Installation

Include Feedy in your Gemfile:

```ruby
gem 'feedy'
```

Run `bundle install` to install the gem.

Now run the generator:

```
rails generator feedy:install
```

The generator will copy migrations and create an initializer at `config/initializers/feedy.rb`.

Run the migration:

```
rake db:migrate
```

## Usage

In any of your views where you want to include feedback button, just include the following:

```ruby
<%= feedback_input %>
```

### Contributing

Pull requests and issues are welcomed.
