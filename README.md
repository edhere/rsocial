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

client.user("ryanbingham_official")
  => {:posts=>1502, :followers=>471000, :following=>171, :handle=>"ryanbingham_official"}
```

#### Facebook

```ruby
require 'rsocial'

client = RSocial::Facebook.client(:requesting_handle => "my_handle")

client.page("RyanBingham")
  => {:followers=>153418, :handle=>"RyanBingham"}
```

#### Twitter

```ruby
require 'rsocial'

client = RSocial::Twitter.client(:requesting_handle => "my_handle")

client.user("RyanBingham")
  => {:tweets=>5755, :following=>636, :followers=>404000, :likes=>151000, :handle=>"RyanBingham"}
```

#### YouTube

```ruby
require 'rsocial'

client = RSocial::Youtube.client(:requesting_handle => "my_handle")

client.channel("UCtZ6qwLISrbRkYG2oBYLz3g")
  => {:subscribers=>11378, :channel_id=>"UCtZ6qwLISrbRkYG2oBYLz3g"}
```


#### Shazam

```ruby
require 'rsocial'

client = RSocial::Shazam.client(:requesting_handle => "my_handle")

client.user("40229308")
  => {:followers=>254734, :id=>"40229308"}
```

#### Soundcloud

```ruby
require 'rsocial'

client = RSocial::Soundcloud.client(:requesting_handle => "my_handle")

client.user("ryan-bingham")
  => {:followers=>1988, :tracks=>51, :handle=>"ryan-bingham"}
```

## Contributing

* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Submit a pull request
