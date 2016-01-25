# WorkflowKit [![Build Status](https://secure.travis-ci.org/fiedl/workflow_kit.png?branch=master)](http://travis-ci.org/fiedl/workflow_kit) [![Dependency Status](https://gemnasium.com/fiedl/workflow_kit.svg)](https://gemnasium.com/fiedl/workflow_kit)

<img src="https://github.com/fiedl/workflow_kit/raw/master/test_app/app/assets/images/screenshot.png" height="300" align="right" vspace="20" hspace="20" />

---

2016-01-25: This **gem has been abandoned** and [moved](https://github.com/fiedl/your_platform/commit/10597164071ab6b96336adf64706d3b1dbc7011a) to [your_platform](https://github.com/fiedl/your_platform).

---

This *ruby on rails gem* provides a *workflow construction kit* for rails apps. Users can arrange workflow bricks in a sequence for each workflow and add parameters. When a workflow is executed, each workflow brick executes a callback method written in ruby and passes the parameters.

## Demo

You might want to have a look at [this demo app at heroku](http://workflow-kit-test-app.herokuapp.com/).

The [code of this demo app can be found here](https://github.com/fiedl/workflow_kit/tree/master/test_app).

## Alpha State

This gem is currently in alpha state. It's not production ready, yet.

## Installation

Add this line to your application's Gemfile:

    gem 'workflow_kit'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install workflow_kit

## Usage

### Preparation

* Include in routes
```ruby
# config/routes.rb
Rails.application.routes.draw do
  mount WorkflowKit::Engine => "/workflow_kit"
end
```

* Migrate Database
```
rake workflow_kit:install:migrations
rake db:migrate
```


TODO: Write usage instructions here

## Further Reading
* Integration of mountable engines (like this gem): http://railscasts.com/episodes/277-mountable-engines?view=asciicast 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
