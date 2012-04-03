class Kandan.Views.Chatbox extends Backbone.View

  template:  JST['chatbox']
  tagName:   'div'
  className: 'chatbox'


  events:
    "keypress .chat-input": 'postMessageOnEnter'
    "click    .post"      : 'postMessage'


  postMessageOnEnter: (event)->
    @postMessage(event) if event.keyCode== 13


  postMessage: (event)->
    $chatbox = $(event.target).parent().find(".chat-input")
    activityAttributes = {
      'content':    $chatbox.val(),
      'channel_id': @channel.get('id')
    }

    Kandan.broadcaster.publish activityAttributes
    # TODO might have to be in some success callback
    $chatbox.val("")

  render: ()->
    @channel = @options.channel
    $(@el).html(@template())
    @
