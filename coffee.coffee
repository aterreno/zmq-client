zeromq = require('zeromq')

socket = zeromq.createSocket('sub')
socket.connect("tcp://flume.hadoop.forward.co.uk:5560")
socket.subscribe("")

socket.on 'message', (ch, data) ->
  console.log (data)