text = process.argv[2]

if text
  words = text.split /,/
  console.log "#{words.length} partygoers"
else
  console.log 'usage: coffee countWord [text]'
