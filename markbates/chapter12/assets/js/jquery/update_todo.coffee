@TodoApp ||= {}
# Изменение задачи
TodoApp.updateTodo = (li, todo) ->
  todo.title = $('.todo_title', li).val()
  if !todo.title? or todo.title.trim() is ""
    $('#error-message').html("Title can't be blank").show()
  else
    if $('.todo_state', li).attr('checked')?
      todo.state = "completed"
    else
      todo.state = "pending"
    request = $.post "/api/todos/#{todo._id}",
      todo: todo
      _method: 'put'
    request.fail (response) =>
      message = JSON.parse(response.responseText).message
      $('#error-message').html(message).show()
    request.done (response) ->
      TodoApp.styleByState(li, todo)