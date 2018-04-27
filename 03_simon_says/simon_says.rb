#write your code here
def echo (a)
  a
end

def shout (a)
  a.upcase
end

def repeat (a, b = 2)
  res = []
  while b > 0
    res.push(a)
    b -= 1
  end
  res.join(" ")
end

def start_of_word (a, b=1)
  a.byteslice(0,b)
end

def first_word (a)
  arr = a.split(" ")
  arr[0]
end

def titleize (a)
  b = a.split(" ")
  c = []
  b.each_with_index {
    |x, index| 
    if index == 0
      c.push(x.capitalize)
    elsif x.to_s == "and" || x == "the" || x == "over"
      c.push(x)
    else
      c.push(x.capitalize)
    end
  }
  res = c.join(" ")
  res
end