#= require "backbone_sync"
#= require "templates"
#= require_tree "models"
#= require_tree "views"
$ ->
  # Запуск приложения на основе Backbone.js
  new TodoListView(collection: new Todos())