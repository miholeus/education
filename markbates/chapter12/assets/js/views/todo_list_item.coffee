# Представление для каждой задачи в списке
class @TodoListItemView extends Backbone.View
  tagName: 'li'
  events:
    'keypress .todo_title': 'handleKeypress'
    'change .todo_state': 'saveModel'
    'click .btn-danger': 'destroy'
  initialize: ->
    @template = _.template(Templates.list_item_template)
    @model.bind("change", @render)
    @model.bind("error", @modelSaveFailed)
    @render()
  render: =>
    $(@el).html(@template(@model.toJSON())).addClass("list-group-item")
    if @model.get('state') is 'completed'
      @$('.todo_state').attr('checked', true)
      @$('.label.active').removeClass('active')
      @$('.todo_title').addClass('completed').attr('disabled', true)
    return @
  handleKeypress: (e) =>
    if e.keyCode is 13
      @saveModel(e)
  saveModel: (e) =>
    e?.preventDefault()
    attrs = {title: @$('.todo_title').val()}
    if @$('.todo_state').attr("checked")?
      attrs.state = "completed"
    else
      attrs.state = "pending"
    @model.save attrs
  modelSaveFailed: (model, error) =>
    if error.responseText?
      error = JSON.parse(error.responseText)
    $("#error-message").html(error.responseText).show()
    @$('.todo_title').val(@model.get('title'))
  destroy: (e) =>
    e?.preventDefault()
    if confirm "Are you sure you want to destroy this todo?"
      @model.destroy
        success: =>
          $(@el).remove()