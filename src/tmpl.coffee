# jQuery.tmpl.js utilities

$ = jQuery ? require("jqueryify")

$.fn.item = ->
  item = $(@).tmplItem().data
  item.reload?()

$.fn.forItem = (item) ->
  @filter ->
    compare = $(@).item()
    return item.eql?(compare) or item is compare

