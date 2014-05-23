# Share Buttons

Small sharing buttons helpers lib

## Installation

Add to your Gemfile and `bundle install` :

```ruby
gem 'share_buttons', github: 'glyph-fr/share_buttons'
```

Use the included generator to generate the initializer file and the customizable views :

```bash
rails generate share_buttons:install
```

## Usage

In your views, use any of the included helpers :

```
<%= facebook_share_button(resource_path(resource), title: resource.title) %>
<%= twitter_share_button(resource_path(resource), title: resource.title) %>
<%= google_plus_share_button(resource_path(resource), title: resource.title) %>
<%= email_share_button(resource_path(resource), title: resource.title) %>
<%= link_share_button(resource_path(resource), title: resource.title) %>
```

And customize the generated views to your needs in `app/views/share_buttons/_<provider>.html.haml`

## Licence

This project rocks and uses MIT-LICENSE.