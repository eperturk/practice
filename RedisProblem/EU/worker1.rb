require "redis"
require "./worker2"

class Worker1
	@redis
	attr_accessor :redis

	def initialize
		@redis = Redis.new(:host=> "localhost", :port=>6379)
	end

	def go
		@queue = Worker2.new
		i = 0
		while (i < 100)
			@queue.queue(Random.rand(0..1000))
			sleep(1)
			i+= 1
		end
	end
end
