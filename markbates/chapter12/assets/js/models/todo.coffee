class @Todo extends Backbone.Model
  # пространство имен 'todo' для данных в формате json
  # см backbone_sync.js
  paramRoot: 'todo'
  # Сконструировать URL, добавив в конец _id, если имеется
  url: ->
    u = "/api/todos"
    u += "#{@get("_id")}" unless @isNew
    return u
  isNew: ->
    !@get("_id")?