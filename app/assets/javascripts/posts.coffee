root = exports ? this
root.posts = ( ->
  init = (page) ->
    switch page
      when 'new'
        working()
        true

  working = ->
    simplemde = new SimpleMDE({ element: $("#postContent")[0] })

  { init: init }
)()
