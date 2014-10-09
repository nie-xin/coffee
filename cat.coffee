#show content of a file - just like cat command in unix
fs = require 'fs'

file = process.argv[2]
fs.readFile file, 'utf-8', (error, contents) ->
  if error
    console.log error
  else 
    console.log contents
