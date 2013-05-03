require "redis"

def workerman1
  redis = Redis.new
  worker1 = rand(1..10)
  redis.set("worker1", worker1)
  redis.incr(1)
  redis.rpush("list", worker1)

end

def workerman2
  redis = Redis.new
  worker2array = []
  p list = redis.lrange("list", 0, -1)
  integers = list.select{|x| x}.map{|x| x.to_i}
  worker2array << integers.inject{|sum, x| sum+x}
  redis.set("total", worker2array.last)
  p redis.get("total")
end

until workerman2.to_i > 500
  workerman1 
  workerman2
  sleep 0.1
end

#workerman1
#workerman2
