require 'redis'


module Worker2
  
  def self.new
    redis = Redis.new
    set_total
    #redis.set("total", 0)
    #p redis.get("total")
  end
  def self.set_total
    redis.set("total", 0)
  end
  
  def self.add_to_queue(number)
    redis.rpush("queue", number)
    redis.incrby("total", redis.lrange("queue", -1, -1))
  end
  def self.get_total(number)
    return redis.get("total") 
  end
end