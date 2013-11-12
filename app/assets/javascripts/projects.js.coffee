# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery -> 
$('#projects').dataTable()

jQuery -> 
$('#users').dataTable()


jQuery ->
$('#project_start_date').datepicker()({dateFormat: 'yyyy-mm-dd'})


jQuery ->
$('#project_end_date').datepicker()({dateFormat: 'yyyy-mm-dd'})


jQuery ->
$('#user_dob').datepicker()({dateFormat: 'yyyy-mm-dd'})
