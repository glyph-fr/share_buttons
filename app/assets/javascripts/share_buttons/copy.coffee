class ShareButtons.CopyButton
  constructor: (@$button) ->
    @clipboard = new ZeroClipboard(@$button[0])
    @clipboard.on('load', => @_initializeClipboardHandlers())
    @$modal = $(@$button.data('target'))
    @$button.on('click', => @_buttonClicked())

  _initializeClipboardHandlers: ->
    @clipboard.on('complete', => @_linkCopied())

  _buttonClicked: ->
    if @$modal.hasClass('in') then @_openModal() else @_closeModal()

  _closeModal: ->
      @$modal.modal('hide')

  _openModal: ->
      @$modal.modal('show')

  _linkCopied: ->
    @$modal.find('.copy-alert-text').hide(0)

    @$modal.one 'shown.bs.modal', =>
      @$modal.find('.copied-alert-text').collapse('show')

    @_openModal()

ShareButtons.register('copy', ShareButtons.CopyButton)
