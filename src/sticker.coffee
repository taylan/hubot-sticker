# Description
#   Post 'Yes We Code' stickers with Hubot.
#
# Commands:
#   hubot sticker me <sticker> - Post the <sticker>
#   hubot stickers - Get the list of defined stickers.

stickers = {
  "compiling": "G9x1DDs",
  "push": "8SxF5Ld",
  "repro": "sDC4RJm",
  "broke": "kYfSLMe",
  "404": "2CDdpU9",
  "iwy": "oN2j9PO",
  "woot": "lBPADq5",
  "wfm": "3Tl4Lo0",
  "plswork": "FwPH0pL",
  "review": "EOyplq0",
  "scope": "fZ8X8Z7",
  "wut": "f5nlZLf",
  "null": "BvIwMGt",
  "loading": "KNurssh",
  "lgtm": "37Kqh6R",
  "reallife": "WNygYwj",
  "hotfix": "1vWsyx4",
  "hfdenied": "uRsjY0G",
  "hello": "kLUbPKC",
  "hack": "1FbmQrd",
  "facepalm": "7Kz4nmk",
  "idk": "UJQFZgb"
}

module.exports = (robot) ->
  robot.respond /sticker( me)?( (\w+))/i, (msg) ->
    sticker = stickers[msg.match[3]] || ''
    msg.send "http://i.imgur.com/#{sticker}.png" if sticker
  
  robot.respond /stickers$/i, (msg) ->
    msg.send("Stickers: #{(sticker for own sticker of stickers).sort().join(', ')}")
