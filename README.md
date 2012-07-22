# WorkflowKit

This *ruby on rails gem* provides a *workflow construction kit* for rails apps. Users can arrange workflow bricks in a sequence for each workflow and add parameters. When a workflow is executed, each workflow brick executes a callback method written in ruby and passes the parameters.

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
