require 'rubygems' unless defined?(Gem)
require 'zmq'

context = ZMQ::Context.new(1)

socket = context.socket(ZMQ::SUB)
socket.connect("tcp://flume.hadoop.forward.co.uk:5560")
socket.setsockopt(ZMQ::SUBSCRIBE, "")

while true do   
  puts socket.recv_string
end
