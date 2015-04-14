slack = [
  "1- Anyone can create channels if they feel the need for it",
  "2 - Have no mercy to archive old channels",
  "3 - Sound the alarm when channels overlap",
  "4 -Announce company-wide new channels",
  "5 -Purpose is for life, Topic can be dynamic"
  ]

slack_complete = [
  "1- Anyone can create channels if they feel the need for it
  Every user should feel free to create a new channel to discuss something that doesn't fit on the
  present ones or, after a few iterations of discussion, dominates a more general channel. To ensure
  that a reason exists for a new channel, the user should set the purpose and topic for it.",
  "2 - Have no mercy to archive old channels
  As this will naturally lead to many channels that end up not being used, people should also feel
  free to archive channels they created or had no recent messages. For the cases where self-discipline
  fails, any admin should archive any channel with no messages for over 1 month. (This can be automated
  when slack makes the API public, but for now we can use slackbot to remind every 15 days)",
  "3 - Sound the alarm when channels overlap
  When someone is in doubt between two channels on where to discuss something, maybe they overlap.
  If this happen more than once (apply good judgement), the team should discuss on #general if the
  purpose of each requires clarification or they should be merged.",
  "4 -Announce company-wide new channels
  When a new channel is created, a notification should be sent in #general so that every member knows
  about it and can decide to join or not the channel. This should be automatic, but for now the
  simples solution is for the channel creater to announce it.",
  "5 -Purpose is for life, Topic can be dynamic
  The channel purpose should justify its existence. The topic (always on screen) should reflect
  that, and eventually be changed to provide context for specific conversation threads, or just
  provide a motivational quote for the tasks at hand."
  ]

module.exports = (robot) ->
  robot.respond /slack guidelines/i, (msg) ->
    text = msg.message.text
    if text.match(/complete/i) or text.match(/extended/i)
      msg.send slack_complete.join('\n')
    else
      msg.send slack.join('\n')

module.exports = (robot) ->
  robot.respond /what are the slack guidelines/i, (msg) ->
    text = msg.message.text
    if text.match(/complete/i) or text.match(/extended/i)
      msg.send slack_complete.join('\n')
    else
      msg.send slack.join('\n')
