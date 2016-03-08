# Главное представление для приложения на основе Backbone
class @TodoListView extends Backbone.View
  el: '#todos'
  initialize: ->
    @template = _.template(Templates.list_item_template)
    @collection.bind("reset", @render)

    @collection.fetch
      success: @render
  render: =>
    @collection.forEach (todo) =>
      $(@el).append("<li class='list-group-item'>#{@template(todo.toJSON())}</li>")