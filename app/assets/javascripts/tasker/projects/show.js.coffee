Tasker.Projects = {} if Tasker.Projects is undefined

Tasker.Projects.Show = ->
  $('.new-task-button').click ->
    url = $(this).data('url')
    $.ajax
      url: url
      type: "GET"
      success: (data)->
        $('#newTask .modal-body').html(data)
      error: ->
        $('#newTask .modal-body').html("ERROR")

  $('.edit-project-button').click ->
    url = $(this).data('url')
    $.ajax
      url: url
      type: "GET"
      success: (data)->
        $('#editProject .modal-body').html(data)
      error: ->
        $('#editProject .modal-body').html("ERROR")