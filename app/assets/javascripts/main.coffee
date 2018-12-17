root = exports ? this
root.Main = ( ->
  init = (layout) ->

    if layout == 'application'
      configure($(document))

  configure = ($element) ->
    config_alerts($element)
    return

  alerts = (type, message) ->
    toastr.options = {
      "closeButton": true,
      "debug": false,
      "newestOnTop": true,
      "progressBar": true,
      "positionClass": "toast-bottom-right",
      "preventDuplicates": true,
      "onclick": null,
      "showDuration": "300",
      "hideDuration": "1000",
      "timeOut": "5000",
      "extendedTimeOut": "1000",
      "showEasing": "swing",
      "hideEasing": "linear",
      "showMethod": "fadeIn",
      "hideMethod": "fadeOut"
    }
    toastr[type](message)

  {
    init: init,
    configure: configure,
    alerts: alerts
  }
)()
