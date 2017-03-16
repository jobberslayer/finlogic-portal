$(document).on 'turbolinks:load', ->
    window.setTimeout (->
        $('.notice').slideUp 500, ->
          $(this).remove()
          return
        return
      ), 3000
