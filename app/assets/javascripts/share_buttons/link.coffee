class LinkButton
  constructor: (@$el) ->
    @clipboard = new ZeroClipboard(@$el[0])
    @clipboard.on('load', _.bind(@_initializeClipboardHandlers, this))
    @$target = $(@$el.data('target'))

  _initializeClipboardHandlers: ->
    @clipboard.on('complete', _.bind(@_linkCopied, this))

  _linkCopied: (e) ->
    @$target.collapse('show')


$ ->
  $('[data-link-button]').each (i, el) -> new LinkButton($(el))
