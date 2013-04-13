jQuery ->
        $('#subtasks').dataTable
          bPaginate: false
          bInfo: false
          bJQueryUI: true

        #$("#subtasks tr:last-child").css("border-bottom","1px solid #b5b5b5")