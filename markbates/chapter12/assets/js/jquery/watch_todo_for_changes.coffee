@TodoApp ||= {}
# Слежение за изменениями в задаче:
TodoApp.watchForChanges = (li, todo) ->
  # Если изменилось состояние флажка
  $('.todo_state', li).click (e) =>
    TodoApp.updateTodo(li, todo)
  # Если в поле ввода заголовка была нажата клавиша "enter":
  $('.todo_title', li).keypress (e) =>
    if e.keyCode is 13
      TodoApp.updateTodo(li, todo)
  $('.btn-danger', li).click (e) =>
    e.preventDefault()
    TodoApp.deleteTodo(li, todo)