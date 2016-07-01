module.exports = (robot) ->
  nandemo = ["なんでも", "何でも"]
  robot.hear /(.*)(なんでも)|(何でも)(.*)/i, (res) ->
    res.reply "ん？今なんでもするって言ったよね？"
  
  robot.hear /(.*)よね(.*)/i, (res) ->
    res.reply "おっ、そうだな"
  
  robot.hear /(.*)(うるさい)|(煩い)|(五月蝿い)|(やかましい)(.*)/i, (res) ->
    res.reply "は？（威圧）"

  robot.hear /(.*)(許さ)(.*)/i, (res) ->
    res.reply "すいません許してください！何でもしますから！"
  
  enterReplies = ['ちょっと焼いてかない？', 'ああ＾～いいっすね～', '入って、どうぞ']
  leaveReplies = ['あのさぁ……', 'あっ、ふーん…（察し）']
  robot.enter (res) ->
    res.send res.random enterReplies
  robot.leave (res) ->
    res.send res.random leaveReplies