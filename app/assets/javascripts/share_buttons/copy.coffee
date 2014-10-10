class ShareButtons.CopyButton
  constructor: (@$button) ->
    @clipboard = new ZeroClipboard(@$button[0])
    @clipboard.on('load', => @_initializeClipboardHandlers())
    @$target = $(@$button.data('target'))
    @$button.on('click', => @_toggleModal())

  _initializeClipboardHandlers: ->
    @clipboard.on('complete', => @_linkCopied())

  _toggleModal: ->
    if @$target.hasClass('in') then @_openModal() else @_closeModal()

  _closeModal: ->
      @$target.modal('hide')

  _openModal: ->
      @$target.modal('show')

  _linkCopied: ->
    @$target.find('.copy-alert-text').hide(0)

    @$target.one 'shown.bs.modal', =>
      @$target.find('.copied-alert-text').collapse('show')

    @_openModal()



$ ->
  $('[data-share="copy"]').each (i, el) -> new ShareButtons.CopyButton($(el))
