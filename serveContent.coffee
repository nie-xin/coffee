fs = require 'fs'
http = require 'http'

sourceFile = 'myfile'
fileContents = 'File not read yet.'

readSourceFile = ->
  fs.readFile sourceFile, 'utf-8', (error, data) ->
    if error 
      console.log error 
    else 
      fileContents = data 

fs.watchFile sourceFile, readSourceFile

server = http.createServer (request, response) ->
  response.end fileContents

server.listen 8080, '127.0.0.1'

