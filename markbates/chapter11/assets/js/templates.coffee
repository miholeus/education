_.templateSettings =
    interpolate : /\{\{(.+?)\}\}/g
@Templates = {}
Templates.list_item_template = """
<div class="clearfix">
    <div class="input-group">
        <label class="input-group-addon active"><input type="checkbox" class="todo_state"/></label>
        <input type="text" class="xlarge todo_title" size="50" value="{{title}}"/>
        <button class="btn btn-danger">X</button>
    </div>
</div>
"""
