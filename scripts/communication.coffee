# Description:
#   The 4 communication fundamentals.
#
# Commands:
#   hubot what are the 4 communication fundamentals - Displays the 4 communication fundamentals list
#   hubot what are the 4 communication fundamentals complete - Displays the complete text of the 4 communication fundamentals

fundamentals = [
  "1 - Be clear."
  "2 - Work as if you’re not in the office."
  "3 - Prefer asynchronous over synchronous communication."
  "4 - Prefer channels over private messages."
  ]

fundamentals_complete = [
  "1 - Be clear:

  Communication is hard. Make an effort to be clear and objective so everyone gets your point quickly."

  "2 - Work as if you’re not in the office:

  Everyone should strive to use our online communication tools - be it to talk about projects, 
  the company, or tell funny jokes. This way, whoever isn’t in the office will not be in disadvantage. (But that doesn't 
    mean we shall be like silent monks when in there!)"

  "3 - Prefer asynchronous over synchronous communication:

  Interruption costs too much - take advantage of asynchronous tools as Slack and Trello to ask questions, 
  leave notes, etc. If you strive to be clear about what you write, in the most cases you will not need Hangouts, etc."

  "4 - Prefer channels over private messages:

  This makes it easy to everyone to know what’s going on the company or project, whenever they want to. And to 
  someone to easily catch up a project they were recently added to."
  ]

module.exports = (robot) ->
  robot.respond /(what are )?the (four |4 )?(communication basics|fundamentals|communication fundamentals)/i, (msg) ->
    text = msg.message.text
    if text.match(/(complete|extended)/i)
      msg.send fundamentals_complete.join('\n')
    else
      msg.send fundamentals.join('\n')
