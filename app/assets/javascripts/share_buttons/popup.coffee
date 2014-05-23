class ShareButtons.PopupButton
  constructor: (@$el) ->
    @$el.on('click', (e) => @_buttonClicked(e))

  _buttonClicked: (e) ->
    e.preventDefault()
    window.open(@$el.attr('href'), 'share-popup', @_popupOptions())

  _popupOptions: ->
    'menubar=no, scrollbars=no, top=0, left=0, width=700, height=300'

$ ->
  $('[data-share="popup"]').each (i, el) -> new ShareButtons.PopupButton($(el))
