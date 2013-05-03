require 'redis'
require_relative 'worker2'
#include worker2
redis = Redis.new
w = Worker2.new
while true
  #redis.rpush("queue", Random.rand(10))
  #p redis.lrange("queue", 0, -1)
  number = Random.rand(10)
  p w
  w.add_to_queue(number)
  sleep 1
end
