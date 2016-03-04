$ ->
    # Передать форме фокус ввода сразу после загрузки страницы
    $("#new_todo .todo_title").focus()
    # Обработка событий keypress в форме создания новой задачи
    $('#new_todo .todo_title').keypress (e) ->
        # обрабатывается только нажатие клавиши 'enter'
        if e.keyCode is 13
            todo = {title: $(e.target).val()}
            if !todo.title? or todo.title.trim() is ""
                $('#error-message').html("Title can't be blank").show()
            else
                request = $.post "/api/todos", todo: todo
                request.fail (response) =>
                    message = JSON.parse(response.responseText).message
                    alert message
                request.done (response) =>
                    TodoApp.appendTodo(todo)
                    $(e.target).val("")
