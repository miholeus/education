# Настройка маршрута для домашней страницы
app.get '/', (req, res) ->
    res.send "Hello, world!"
