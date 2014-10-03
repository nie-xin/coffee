countWords = (text) ->
  return 0 unless text 
  words = (text.split ' ').filter(word) -> word.length > 3
  words.length