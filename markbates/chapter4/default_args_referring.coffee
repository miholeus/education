href = (text, url = text) ->
  html = "<a href='#{url}'>#{text}</a>"
  html
console.log href("Click here", "http://www.example.com")
console.log href("htt://www.example.com")
