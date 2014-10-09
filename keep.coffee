keep = (array, condition) ->
  item for item in array when condition item

greaterThan3 = (n) -> n > 3
console.log keep [1..4], greaterThan3
