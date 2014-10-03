// Generated by CoffeeScript 1.8.0
(function() {
  var barista, hasMilk, houseRoast, makeCoffee, order, request, response;

  houseRoast = 'Yirgacheffe';

  hasMilk = function(style) {
    switch (style.toLowerCase()) {
      case 'latte':
      case 'cappuccino':
      case 'mocha':
        return true;
      default:
        return false;
    }
  };

  makeCoffee = function(requestedStyle) {
    var style;
    style = requestedStyle || 'Espresso';
    console.log(houseRoast);
    if (houseRoast != null) {
      return "" + houseRoast + " " + style;
    } else {
      return style;
    }
  };

  barista = function(style) {
    var coffee, time;
    time = (new Date()).getHours();
    if (hasMile(style) && time > 12) {
      return "No!";
    } else {
      coffee = makeCoffee(style);
      return "Enjoy your " + coffee + "!";
    }
  };

  order = document.querySelector('#order');

  request = document.querySelector('#request');

  response = document.querySelector('#response');

  order.onsubmit = function() {
    response.innerHTML = barista(request.value);
    return false;
  };

}).call(this);
