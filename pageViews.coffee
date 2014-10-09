views = {}

viewsIncrement = (key) ->
  views[key] ?= 0
  views[key] = views[key] + 1

total = ->
  sum = 0
  for own page, count of views
    sum = sum + count
  sum
