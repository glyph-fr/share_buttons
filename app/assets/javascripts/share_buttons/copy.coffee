class ShareButtons.CopyButton
  constructor: (@$button) ->
    @clipboard = new ZeroClipboard(@$button[0])
    @clipboard.on('load', => @_initializeClipboardHandlers())
    @$target = $(@$button.data('target'))
    @$button.on('click', => @_toggleCollapse())

  _initializeClipboardHandlers: ->
    @clipboard.on('complete', => @_linkCopied())

  _toggleCollapse: ->
    if @$target.hasClass('in') then @_openCollapse() else @_closeCollapse()

  _closeCollapse: ->
      @$target.collapse('hide')

  _openCollapse: ->
      @$target.collapse('show')

  _linkCopied: ->
    @$target.find('.copy-alert-text').hide(0)

    @$target.one 'shown.bs.collapse', =>
      @$target.find('.copied-alert-text').collapse('show')

    @_openCollapse()



$ ->
  $('[data-share="copy"]').each (i, el) -> new ShareButtons.CopyButton($(el))
