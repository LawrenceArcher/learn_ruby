class Timer
  attr_accessor :seconds

  def initialize
  	@seconds = 0
  end

  def time_string
  	output = ""
	if @seconds / 3600 >= 1
		hours = (@seconds/3600)
		@seconds = @seconds % 3600
		if hours < 10
			h = "0" + hours.to_s
		elsif hours > 10
			h = hours.to_s
		end
	elsif @seconds / 3600 < 1
		h = "00"
	end
	if @seconds / 60 >= 1
		minutes = @seconds/60
		@seconds = @seconds % 60
		if minutes < 10
			m = "0" + minutes.to_s
		elsif minutes > 10
			m = minutes.to_s
		end
	elsif @seconds /60 < 1
		m = "00"
	end
	if @seconds < 10 
		s = "0" + @seconds.to_s
	else
		s = @seconds.to_s
	end
	output = h.to_s + ":" + m.to_s + ":" + s.to_s
	output
  end
end

@timer = Timer.new
@timer.seconds = 66
puts @timer.time_string

# def timer(input)
# 	output = ""
# 	if input / 3600 > 1
# 		hours = (input/3600.to_i)
# 		input = input % 3600
# 		if hours < 10
# 			h = "0" + hours.to_s
# 		elsif hours > 10
# 			h = hours.to_s
# 		end
# 	elsif input /3600 < 1
# 		h = "00"
# 	end
# 	if input / 60 > 1
# 		minutes = (input/60.to_i)
# 		input = input % 60
# 		if minutes < 10
# 			m = "0" + minutes.to_s
# 		elsif minutes > 10
# 			m = minutes.to_s
# 		end
# 	elsif input /60 < 1
# 		m = "00"
# 	end
# 	if input < 10 
# 		seconds = "0" + input.to_s
# 	else
# 		seconds = input.to_s
# 	end
# 	output = h + ":" + m + ":" + seconds
# 	puts output
# end

# timer(123)