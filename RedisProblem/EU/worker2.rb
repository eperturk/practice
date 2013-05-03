require "redis"

class Worker2
	attr_accessor :redis

	def initialize
		@redis = Redis.new(:host=> "localhost", :port=>6379)
	end

	def queue(number)
		@redis.incrby("total",number)
	end

end