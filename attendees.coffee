showAttendees = ->
  url = "http://www.coffeescriptinaction.com/3/data.js"
  get url, (response) ->
    outputElement = document.querySelector('#how-many-attendees')
    outputElement.innerHTML = "#{response} attendees!"

setInterval(showAttendees, 1000)
