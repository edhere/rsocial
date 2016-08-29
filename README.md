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

client.user("the_skatenerd")        #=> {:posts=>1149, :followers=>604000, :following=>921, :handle=>"the_skatenerd"}
```

#### Facebook

```ruby
require 'rsocial'

client = RSocial::Facebook.client(:requesting_handle => "my_handle")

client.page("TransWorldSkate")     #=> {:followers=>1669313, :handle=>"TransWorldSkate"}
```

#### Twitter

```ruby
require 'rsocial'

client = RSocial::Twitter.client(:requesting_handle => "my_handle")

client.page("TransWorldSKATE")     #=> {:tweets=>7360, :following=>299, :followers=>189000, :likes=>90, :handle=>"TransWorldSKATE"}
```

#### YouTube

```ruby
require 'rsocial'

client = RSocial::Youtube.client(:requesting_handle => "my_handle")

client.user("TransworldSKATEmag")  #=> {:subscribers=>195811, :handle=>"TransworldSKATEmag"}
```

## Contributing

* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Submit a pull request
