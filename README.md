## RSocial

A gem for crawling social media stats on various web entities

## Installation

Add this line to your application's Gemfile:

    gem 'rsocial'

And then execute:

    $ bundler

Or install it yourself:

    $ gem install rsocial

## Usage

#### Instagram

```ruby
require 'rsocial'

client = RSocial::Instagram.client(:requesting_handle => "my_handle")

client.user("the_skatenerd")        #=> {:handle => "the_skatenerd", :posts => "1,140", :followers => "59.8k", :following => "920"}
```

#### Facebook

```ruby
require 'rsocial'

client = RSocial::Facebook.client(:requesting_handle => "my_handle")

client.page("TransWorldSkate")     #=> {:handle => "TransWorldSkate", :followers => "1,667,861 likes"}
```

## Contributing

* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Submit a pull request
