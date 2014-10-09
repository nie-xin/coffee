class Camera
  constructor: (name, info) ->
    @name = name
    @info = info

  render: ->
    "{@name}: #{@info.description} (#{@info.stock} in stock)"

  #purchase: (product) ->
class Shop
  constructor: (data) ->
    for name, info of data
      new Camera name, info
