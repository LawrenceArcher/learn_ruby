#write your code here
def isVowel (char)
	if (char=="a" || char=="e" || char=="i" || char=="o"|| char=="u")
		true
	else
		false
	end
end

def translateWord(input)
	output = ""
	arr = input.split(//)
	newArr = arr
	y = 0
	arr.each_with_index {|x, index|
		if x == "q" && arr[index+1] == "u"
			z = newArr.shift(index+2)
			newArr.push(z)
			y += 1
		elsif isVowel(x) == true && y == 0
			z = newArr.shift(index)
			newArr.push(z)
			y += 1
		end
	}
	newArr.join + "ay"
end

def translate(input)
	arr = input.split(' ')
	outputArr = []
	arr.each {|x|
		outputArr.push(translateWord(x))
	}
	output = outputArr.join(" ")
	output
end

puts translateWord("quiet")