# Настройка маршрута для домашней страницы
app.get '/', (req, res) ->
    res.render "index", layout: false
