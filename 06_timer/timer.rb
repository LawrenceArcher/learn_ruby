# class Timer
#   def initialize(input)
#     @start = Time.now
#     result = @start +input.to_i - @start
#     puts result
#   end
# end

# s = Timer.new
# s.initialize(60)

def timer(input)
	output = ""
	if input / 3600 > 1
		hours = (input/3600.to_i)
		input = input % 3600
		if hours < 10
			h = "0" + hours.to_s
		elsif hours > 10
			h = hours.to_s
		end
	elsif input /3600 < 1
		h = "00"
	end
	if input / 60 > 1
		minutes = (input/60.to_i)
		input = input % 60
		if minutes < 10
			m = "0" + minutes.to_s
		elsif minutes > 10
			m = minutes.to_s
		end
	elsif input /60 < 1
		m = "00"
	end
	if input < 10 
		seconds = "0" + input.to_s
	else
		seconds = input.to_s
	end
	output = h + ":" + m + ":" + seconds
	puts output
end

timer(123)