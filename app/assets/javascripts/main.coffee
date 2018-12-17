root = exports ? this
root.origin = ( ->
  init = (layout) ->
    window.Noty = require('noty')

    if layout == 'application'
      configure($(document))

  configure = ($element) ->
    config_alerts($element)
    return

  alerts = (type, message) ->
    new Noty({ type: type, text: message }).show()

  {
    init: init,
    configure: configure,
    alerts: alerts
  }
)()
