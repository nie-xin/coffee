// Generated by CoffeeScript 1.8.0
(function() {
  var file, fs;

  fs = require('fs');

  file = process.argv[2];

  fs.readFile(file, 'utf-8', function(error, contents) {
    if (error) {
      return console.log(error);
    } else {
      return console.log(contents);
    }
  });

}).call(this);