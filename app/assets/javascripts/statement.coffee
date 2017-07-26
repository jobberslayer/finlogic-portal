# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  $('#pdf-income').hide()

  $('#income-tab').on 'show.bs.tab', (e) ->
    $('#pdf-income').show()
  $('#income-tab').on 'hide.bs.tab', (e) ->
    $('#pdf-income').hide()
  $('#balance-tab').on 'show.bs.tab', (e) ->
    $('#pdf-balance').show()
  $('#balance-tab').on 'hide.bs.tab', (e) ->
    $('#pdf-balance').hide()

  $('#menu-toggle').click (e) ->
    e.preventDefault()
    $('#wrapper').toggleClass("toggled")
    return
