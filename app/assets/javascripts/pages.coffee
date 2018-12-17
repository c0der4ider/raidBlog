root = exports ? this
root.Pages = ( ->
  init = (page) ->
    switch page
      when 'index'
        working()
        true

  working = ->
    true

  { init: init }
)()
