hasMilk = (style) ->
    switch style
        when "latte", "cappuccino"
            yes
        else
            no

makeCoffee = (style) ->
    style || 'Espresso'

barista = (style) ->
    now = new Date()
    time = now.getHours()
    if hasMilk(style) and time > 12
        "No!"
    else
        coffee = makeCoffee style
        "Enjoy your #{coffee}!"

barista "latte"
