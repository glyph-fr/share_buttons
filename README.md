# Share Buttons

Small sharing buttons helpers lib.

**Note :** Templates markup is written with
[Twitter Bootstrap v3](http://getbootstrap.com/) in mind and the javascript for
the `link_share_button` helper uses Bootsrap's `collapse` plugin.
You can override the plugin's view markup for every helper and delete the
`[data-link-button]` attribute for the `link_share_button` helper to avoid
the associated javascript to run.

## Installation

Add to your Gemfile and `bundle install` :

```ruby
gem 'share_buttons', github: 'glyph-fr/share_buttons'
```

Use the included generator to generate the initializer file and the customizable views :

```bash
rails generate share_buttons:install
```

At last, include the javascript file in your `application.js` with :

```javascript
//= require share_buttons
```

## Configuration

For Facebook sharing, you need to add you Facebook APP_ID to the generated
initializer configuration file in `config/initializers/share_buttons.rb` :

```ruby
ShareButtons.configure do |config|
  # Configure your facebook App ID for sharing
  config.facebook.app_id = ENV['FACEBOOK_KEY']
end
```

## Usage

In your views, use any of the included helpers :

```erb
<%= facebook_share_button(resource_path(resource), title: resource.title) %>
<%= twitter_share_button(resource_path(resource), title: resource.title) %>
<%= google_plus_share_button(resource_path(resource), title: resource.title) %>
<%= pinterest_share_button(resource_path(resource), title: resource.title, image_url: resource.image.url) %>
<%= email_share_button(resource_path(resource), title: resource.title) %>
<%= link_share_button(resource_path(resource), title: resource.title) %>
```

And customize the generated views to your needs in `app/views/share_buttons/_<provider>.html.haml`

### Facebook

Facebook's `redirect_uri` parameter will be set to `request.original_url` by
default but you can pass a custom URL as follow

```erb
<%= facebook_share_button(resource_path(resource), title: resource.title, redirect_uri: a_custom_url) %>
```

Useful if you want to handle when user cancelled dialog (e.g. close popup) or
successfully shared on his wall (e.g. track sharing hits)

## Licence

This project rocks and uses MIT-LICENSE.
