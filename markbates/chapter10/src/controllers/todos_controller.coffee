# Получение списка задач
app.get '/api/todos', (req, res) ->
    Todo.find {}, {}, (err, @todos) =>
        if err?
            res.json(err, 500)
        else
            res.json(@todos)
# Создание новой задачи
app.post '/api/todos', (req, res) ->
    @todo = new Todo(req.param('todo'))
    @todo.save (err) =>
        if err?
            res.json(err, 500)
        else
            res.json(@todo)
# Получение информации о конкретной задаче
app.get '/api/todos/:id', (req, res) ->
    Todo.findById req.param('id'), (err, @todo) =>
        if err?
            res.json(err, 500)
        else
            res.json @todo
# Изменение конкретной задачи
app.put '/api/todos/:id', (req, res) ->
    Todo.findById req.param('id'), (err, @todo) =>
        if err?
            res.json(err, 500)
        else
            @todo.set(req.param('todo'))
            @todo.save (err) =>
                if err?
                    res.json(err, 500)
                else
                    res.json @todo
# Удаление конкретной задачи
app.delete '/api/todos/:id', (req, res) ->
    Todo.findById req.param('id'), (err, @todo) =>
        if err?
            res.json(err, 500)
        else
            @todo.remove()
            res.json @todo
