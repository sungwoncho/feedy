# Feedy [![Build Status](https://travis-ci.org/sungwoncho/feedy.svg?branch=master)](https://travis-ci.org/sungwoncho/feedy)

Feedy is an engine that lets you collect and view user feedback with no hassle.

Embed feedy in your view, and users will see a feedback button they can toggle in the bottom-right corner of the browser screen.


## Working demo

[Demo](https://feedy-demo.herokuapp.com/)

## Installation

Include Feedy in your Gemfile:

```ruby
gem 'feedy'
```

Run `bundle install` to install the gem.

Now run the generator:

```
rails g feedy:install
```

The generator will copy migrations, and create an initializer at `config/initializers/feedy.rb`, and mount the engine in your `config/routes.rb` file.

Run the migration:

```
rake db:migrate
```

Now, require CSS and JavaScript assets to your asset pipeline.

*application.css*
```
...
 *= require feedy/feedbacks
```

*application.js*
```
...
//= require jquery
//= require jquery-ujs
//= require feedy/feedbacks
```

Require the JavaScript asset *after* `jquery`, and `jquery-ujs`, as Feedy depends on them.


## Usage

In any of your views where you want to include feedback button, just include the following:

```
<%= feedy_feedback %>
```

To view the submitted feedbacks, go to `/feedy/feedbacks` path in your browser.


## Configuration

`config/initializers/feedy.rb` holds configuration values.

Change them to customize the engine's behavior. Don't forget to restart your server after making any changes.


## Contributing

Pull requests and issues are welcomed.

### Future roadmap and todos

* Add authentication for feedback views
* Paginate the feedbacks
* Customizable feedback inputs
