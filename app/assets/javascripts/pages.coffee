root = exports ? this
root.pages = ( ->
  init = (page) ->
    switch page
      when 'index'
        working()
        true

  working = ->
    true

  { init: init }
)()
