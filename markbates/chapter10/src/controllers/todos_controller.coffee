# Получение списка задач
app.get '/api/todos', (req, res) ->
    Todo.find {}, {}, (err, @todos) =>
        if err?
            res.json(err, 500)
        else
            res.json(@todos)
# Создание новой задачи
app.post '/api/todos', (req, res) ->
    res.json {}
# Получение информации о конкретной задаче
app.get '/api/todos/:id', (req, res) ->
    res.json {}
# Изменение конкретной задачи
app.put '/api/todos/:id', (req, res) ->
    res.json {}
# Удаление конкретной задачи
app.delete '/api/todos/:id', (req, res) ->
    res.json {}
