class Product
  constructor: (name, info) ->
    @name = name
    @info = info

  render: ->
    "#{@name}: #{@info.description} (#{@info.stock} in stock)"

  purchase: ->
    if @info.stock > 0
      post "/json/purchase/camera/#{@name}", (res) =>
        if res.status is "success"
          @info = res.update
          @render()

class Skateboard extends Product

class Camera extends Product
  megapixels: ->
    @info.megapixels || 'Unknown'


## Tesing
skateOMatic = new Skateboard "Skate-o-matic", {
  description: "It's a skateboard"
  stock: 1
}

console.log skateOMatic.render()

x11 = new Camera "x11", {
  description: "The future of photography"
  stock: 4
  megapixels: 20
}

sk8orama = new Skateboard "Sk8orama", {
  description: "A trendy skateboard"
  stock: 4
}

console.log x11.megapixels?

console.log x11.megapixels()

console.log sk8orama.megapixels?
