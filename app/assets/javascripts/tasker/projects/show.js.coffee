Tasker.Projects = {} if Tasker.Projects is undefined

Tasker.Projects.Show = ->
  $('.new-task-button').click ->
    id = $(this).data('project-id')
    $.ajax
      url: "/tasks/new"
      data: "project_id=#{id}"
      type: "GET"
      success: (data)->
        $('#newTask .modal-body').html(data)
      error: ->
        $('#newTask .modal-body').html("ERROR")