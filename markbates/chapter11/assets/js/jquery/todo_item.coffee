@TodoApp ||= {}
TodoApp.appendTodo = (todo) ->
    li = $("<li class='list-group-item'>#{_.template(Templates.list_item_template)(todo)}</li>")
    $("#new_todo").after(li)
    TodoApp.watchForChanges(li, todo)
    TodoApp.styleByState(li, todo)