## RSocial

RSocial is a Ruby gem for crawling social media stats on various web entities. It's been setup to use Selenium WebDriver to make direct calls to your computers web browser, whereby each social media public web application is loaded and interacted with in order to poll the various stats.

## Requirements

* [chromedriver]: https://sites.google.com/a/chromium.org/chromedriver/getting-started
* [geckodriver]: https://github.com/mozilla/geckodriver/releasess

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
  => {:post_count=>1502, :follower_count=>471000, :following_count=>171, :handle=>"ryanbingham_official"}
client.tag("newmusic")
  => {:post_count=>6676425, :images=>[{:alt=>"caption",:src=>"src"}]}
```

#### Facebook

```ruby
require 'rsocial'

client = RSocial::Facebook.client(:requesting_handle => "my_handle")

client.page("RyanBingham")
  => {:follower_count=>153418, :handle=>"RyanBingham"}
```

#### Twitter

```ruby
require 'rsocial'

client = RSocial::Twitter.client(:requesting_handle => "my_handle")

client.user("RyanBingham")
  => {:tweet_count=>5755, :following_count=>636, :follower_count=>404000, :like_count=>151000, :handle=>"RyanBingham"}
```

#### YouTube

```ruby
require 'rsocial'

client = RSocial::Youtube.client(:requesting_handle => "my_handle")

client.channel("UCtZ6qwLISrbRkYG2oBYLz3g")
  => {:subscriber_count=>11378, :channel_id=>"UCtZ6qwLISrbRkYG2oBYLz3g"}
```


#### Shazam

```ruby
require 'rsocial'

client = RSocial::Shazam.client(:requesting_handle => "my_handle")

client.user("40229308")
  => {:follower_count=>254734, :id=>"40229308"}
```

#### Soundcloud

```ruby
require 'rsocial'

client = RSocial::Soundcloud.client(:requesting_handle => "my_handle")

client.user("ryan-bingham")
  => {:follower_count=>1988, :track_count=>51, :handle=>"ryan-bingham"}
```

## Building & Testing

```
rspec
```
```
gem build rsocial.gemspec
gem install ./rsocial-X.X.X.gem
```
irb
```
require 'rsocial'
```

## Contributing

* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Submit a pull request
