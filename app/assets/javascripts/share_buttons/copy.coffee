class ShareButtons.CopyButton
  constructor: (@$button) ->
    @clipboard = new ZeroClipboard(@$button[0])
    @clipboard.on('load', => @_initializeClipboardHandlers())
    @$collapse = $(@$button.data('target'))
    @$button.on('click', => @_buttonClicked())

  _initializeClipboardHandlers: ->
    @clipboard.on('complete', => @_linkCopied())

  _buttonClicked: ->
    if @$collapse.hasClass('in') then @_openCollapse() else @_closeCollapse()

  _closeCollapse: ->
      @$collapse.collapse('hide')

  _openCollapse: ->
      @$collapse.collapse('show')

  _linkCopied: ->
    @$collapse.find('.copy-alert-text').hide(0)

    @$collapse.one 'shown.bs.collapse', =>
      @$collapse.find('.copied-alert-text').collapse('show')

    @_openCollapse()

ShareButtons.register('copy', ShareButtons.CopyButton)
