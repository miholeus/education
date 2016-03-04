@TodoApp ||= {}
# Изменять стиль отображения в соответствии с состоянием задачи:
TodoApp.styleByState = (li, todo) ->
  if todo.state is "completed"
    $('.todo_state', li).attr("checked", true)
    $('label.active', li).removeClass('active')
    $('.todo_title', li).addClass('completed').attr('disabled', true)
  else
    $('.todo_state', li).attr("checked", false)
    $('label.active', li).addClass('active')
    $('.todo_title', li).removeClass('completed').attr('disabled', false)