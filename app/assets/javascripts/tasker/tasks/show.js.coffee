Tasker.Tasks = {} if Tasker.Tasks is undefined

Tasker.Tasks.Show = ->
  $('.edit-task-button').click ->
    url = $(this).data('url')
    $.ajax
      url: url
      type: "GET"
      success: (data)->
        $('#editTask .modal-body').html(data)
      error: ->
        $('#editTask .modal-body').html("ERROR")

  $('.new-task-button').click ->
    url = $(this).data('url')
    $.ajax
      url: url
      type: "GET"
      success: (data)->
        $('#newTask .modal-body').html(data)
      error: ->
        $('#newTask .modal-body').html("ERROR")

  $('.new-task_history-button').click ->
    url = $(this).data('url')
    $.ajax
      url: url
      type: "GET"
      success: (data)->
        $('#changeTaskStatus .modal-body').html(data)
      error: ->
        $('#changeTaskStatus .modal-body').html("ERROR")
