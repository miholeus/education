require "#{__dirname}/responder"
class Responder.Index extends Responder
    respond: (@req, @res) =>
        Todo.find {}, {}, @complete
