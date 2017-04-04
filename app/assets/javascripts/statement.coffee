# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#pdf-income').hide()
  $('#income-tab').on 'shown.bs.tab', (e) ->
    $('#pdf-balance').hide()
    $('#pdf-income').show()
  $('#balance-tab').on 'shown.bs.tab', (e) ->
    $('#pdf-income').hide()
    $('#pdf-balance').show()

