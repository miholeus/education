global.express = require('express')

global.app = app = express()
require("#{__dirname}/src/configuration")
# Настройка маршрута для домашней страницы
require("#{__dirname}/src/controllers/home_controller")
# Запуск сервера
app.set('port', process.env.PORT || 3000)
server = app.listen(app.get('port'), ->
    console.log("Express server listening on port %d in %s mode", server.address().port,
        app.settings.env)
)
