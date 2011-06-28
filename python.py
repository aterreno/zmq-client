import zmq

context = zmq.Context()
socket = context.socket(zmq.SUB)
socket.connect("tcp://flume.hadoop.forward.co.uk:5560")
socket.setsockopt(zmq.SUBSCRIBE, "")

while True:
  channel = socket.recv()
  message = socket.recv()
  
  print "Received %s" % message