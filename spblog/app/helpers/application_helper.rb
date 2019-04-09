module ApplicationHelper
	def get_season()
		time = Time.new
		if(time.month >= 3) && (time.month <=5)
			"It is Spring"
		elsif (time.month > 5) && (time.month <= 8)
			"It is summer"
		elsif ( time.month >8) && (time.month <= 10)
			"Fall"
		else
			"winter"
		end
	end

	def get_random_number(max_value = 10)
		rand(max_value)
	end

	def get_random_welcome()
		opening = ["what a beautiful day. ",
		"Welcome to our site. ",
		"Thank you for stopping by. "]
		
		middle = ["Middle 1. ",
		"Middle 2. ",
		"Middle 3. "]

		ending = ["ending 1. ",
		"ending 2. ",
		"ending 3. "]

		"#{opening[rand(3)]} #{middle[rand(3)]} #{ending[rand(3)]}"
	end


	def count_to_10
		x = 2
		number_list = "1"
		loop do
			number_list = number_list + ", " + x.to_s
			x += 1
			break if x > 10
		end
		"#{number_list}"
	end
end
