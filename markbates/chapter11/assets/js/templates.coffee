_.templateSettings =
    interpolate : /\{\{(.+?)\}\}/g
@Templates = {}
Templates.list_item_template = """
<div class="clearfix">
    <div class="input">
        <div class="input-prepend">
            <label class="add-on active"><input type="checkbox" class="todo_state"/></label>
            <input type="text" class="xlarge todo_title" size="50" value="{{title}}"/>
            <button class="btn danger">X</button>
        </div>
    </div>
</div>
"""
