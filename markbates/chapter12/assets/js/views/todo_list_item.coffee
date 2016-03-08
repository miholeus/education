# Представление для каждой задачи в списке
class @TodoListItemView extends Backbone.View
  tagName: 'li'
  initialize: ->
    @template = _.template(Templates.list_item_template)
    @render()
  render: =>
    $(@el).html(@template(@model.toJSON())).addClass("list-group-item")
    if @model.get('state') is 'completed'
      @$('.todo_state').attr('checked', true)
      @$('.label.active').removeClass('active')
      @$('.todo_title').addClass('completed').attr('disabled', true)
    return @