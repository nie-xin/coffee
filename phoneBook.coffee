phonebook =
  numbers:
    hannibal: '555-5551'
    darth: '555-5552'
    hal9000: 'disconnected'
    freddy: '555-5554'
    'T-800': '555-5555'

  list: ->
    "#{name}: #{number}" for name, number of @numbers

  add: (name, number) ->
    if not (name of @numbers)
      @numbers[name] = number

  get: (name) ->
    if name of @numbers
      "#{name}: #{@numbers[name]}"
    else
      "#{name} not found"

console.log "phonebook. Usage: add, get, list, exit"

process.stdin.setEncoding 'utf-8'
stdin = process.openStdin()
stdin.on 'data', (chunk) ->
  args = chunk.split(' ')
  command = args[0].trim()
  name = args[1].trim() if args[1]
  number = args[2].trim() if args[2]
  switch command
    when 'add'
      res = phonebook.add(name, number) if name and number
      console.log res
    when 'get'
      console.log phonebook.get(name) if name
    when 'list'
      console.log phonebook.list()
    when 'exit'
      process.exit 1
