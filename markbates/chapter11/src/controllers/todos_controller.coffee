# Подключить все классы реализации операций
for name in ['index', 'create', 'show', 'update', 'destroy']
    require "#{__dirname}/responders/#{name}_responder"
# Получение списка задач
app.get '/api/todos', new Responder.Index().respond
# Создание новой задачи
app.post '/api/todos', new Responder.Create().respond
# Получение информации о конкретной задаче
app.get '/api/todos/:id', new Responder.Show().respond
# Изменение конкретной задачи
app.put '/api/todos/:id', new Responder.Update().respond
# Удаление конкретной задачи
app.delete '/api/todos/:id', new Responder.Delete().respond
