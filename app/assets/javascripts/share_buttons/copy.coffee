class ShareButtons.CopyButton
  constructor: (@$el) ->
    @clipboard = new ZeroClipboard(@$el[0])
    @clipboard.on('load', => @_initializeClipboardHandlers())
    @$target = $(@$el.data('target'))

  _initializeClipboardHandlers: ->
    @clipboard.on('complete', => @_linkCopied())

  _linkCopied: ->
    @$target.collapse('show')


$ ->
  $('[data-share="copy"]').each (i, el) -> new ShareButtons.CopyButton($(el))
