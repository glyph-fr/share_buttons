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

## Usage

In your views, use any of the included helpers :

```erb
<%= facebook_share_button(resource_path(resource), title: resource.title) %>
<%= twitter_share_button(resource_path(resource), title: resource.title) %>
<%= google_plus_share_button(resource_path(resource), title: resource.title) %>
<%= email_share_button(resource_path(resource), title: resource.title) %>
<%= link_share_button(resource_path(resource), title: resource.title) %>
```

And customize the generated views to your needs in `app/views/share_buttons/_<provider>.html.haml`

## Licence

This project rocks and uses MIT-LICENSE.
