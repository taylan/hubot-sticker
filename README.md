# hubot-sticker

Post 'Yes We Code' stickers with Hubot.

See [`src/sticker.coffee`](src/sticker.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-sticker --save`

Then add **hubot-sticker** to your `external-scripts.json`:

```json
[
  "hubot-sticker"
]
```

## Sample Interaction

```
user1>> hubot stickers
hubot>> Stickers: 404, broke, compiling, facepalm, hack, hello, hfdenied, hotfix, idk, iwy, lgtm, loading, null, plswork, push, reallife, repro, review, scope, wfm, woot, wut

user1>> hubot sticker me hello
hubot>> http://i.imgur.com/kLUbPKC.png
```
