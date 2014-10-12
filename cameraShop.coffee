data =
  x100:
    description: "A really cool camera"
    stock: 5
  x1:
    description: "An awesome camera"
    stock: 6

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

shop = new Shop data
console.log shop
console.log data
