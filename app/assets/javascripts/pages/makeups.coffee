$(document).on 'page:change', (e) ->
  return unless document.body.id == 'makeups-show'

  $('.search-icon').on 'click', ->
    $('.search-input').addClass 'active'
    $('.search-input input').focus()

  $('.search-input .octicon-x').on 'click', ->
    $('.search-input').removeClass 'active'

  # hide search input on pressing Escape
  $('.search-input input').on 'keydown', (e) ->
    $('.search-input').removeClass 'active' if e.keyCode == 27

  $('.octicon-three-bars.left-menu-icon').on 'click', ->
    $('.left-menu').addClass 'active'
    $('.overlay').show()

  $('.octicon-x.close-left-menu-icon').on 'click', ->
    $('.left-menu').removeClass 'active'
    $('.overlay').hide()

  $('.overlay').on 'click', ->
    $('.left-menu').removeClass 'active'
    $(@).hide()
