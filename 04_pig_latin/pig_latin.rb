#write your code here
def isVowel (char)
	if (char=="a" || char=="e" || char=="i" || char=="o"|| char=="u")
		true
	end
end

def translate(input)
	ay = "ay"
	output = ""
	arr = input.split(//)
	arr.each {|x|
		if !isVowel(x)
			arr.push(arr.first)
			arr.shift
			next
		end
		if isVowel(x)
			output = arr.join + ay
			break
		end
	}
	output
end