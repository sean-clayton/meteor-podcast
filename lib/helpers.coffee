###
Helper Functions
###

@__ = lodash

###
Routing Helpers
###

@goTo = (url) ->
  Router.go url
  return

@getPodcastUrl = (id) ->
  getRouteUrl "podcast_page", _id: id

###
String Helpers
###

@sanitizeUrl = (string) ->
  dashify __.deburr string

@stripHTML = (string) ->
  string.replace /<(?:.|\n)*?>/gm, ""

@sanitizePath = (string) ->
  string.replace /\.\.|\/|\\/g, ""

@escape = (string) ->
  __.escape string

@dashify = (string) ->
  __.kebabCase string