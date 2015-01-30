cleanUp = (string) ->
  stipHTML(string)

stripHTML = (string) ->
  string.replace /<(?:.|\n)*?>)/gm, ''