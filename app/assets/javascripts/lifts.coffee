# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('.monthpicker').datepicker({ startView: 1, minViewMode: 1, autoclose: true, format: "yyyy-mm-dd" });
  $('.datepicker').datepicker({ startView: 1, minViewMode: 0, autoclose: true, format: "yyyy-mm-dd" });

