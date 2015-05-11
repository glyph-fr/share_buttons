#= require zeroclipboard
#= require_self
#= require share_buttons/popup
#= require share_buttons/copy

@ShareButtons =
  _plugins: {}

  # Custom page ready handler allowing to automatically handle apps with or
  # without Turbolinks
  onPageReady: (callback) ->
    $(document).ready(-> callback() unless window.Turbolinks)
    $(document).on('page:change', callback);

  register: (type, plugin) ->
    ShareButtons._plugins[type] = plugin

  initializePlugins: ($container) ->
    for type, plugin of ShareButtons._plugins
      $container.find("[data-share='#{ type }']").each (i, el) ->
        $button = $(el)
        # Avoid double initialization
        return if $button.data('share-button')
        # Initialize plugin and cache it
        button = new plugin($button)
        $button.data('share-button', button)

# Expose jQuery plugin to initialize share buttons inside a given container
#
# Usage:  $('body').ShareButtons()
#
$.fn.shareButtons = ->
  @each (i, el) -> ShareButtons.initializePlugins($(el))

# Auto initialize plugins on page ready
#
ShareButtons.onPageReady ->
  $('body').shareButtons()

