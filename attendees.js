// Generated by CoffeeScript 1.8.0
(function() {
  var showAttendees;

  showAttendees = function() {
    var url;
    url = "http://www.coffeescriptinaction.com/3/data.js";
    return get(url, function(response) {
      var outputElement;
      outputElement = document.querySelector('#how-many-attendees');
      return outputElement.innerHTML = "" + response + " attendees!";
    });
  };

  setInterval(showAttendees, 1000);

}).call(this);