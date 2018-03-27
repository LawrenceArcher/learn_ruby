#write your code here
def add(num1, num2)
  num1+num2
end

def subtract(num1, num2)
  num1-num2
end

def sum(arr)
  arr.inject (0){|sum, n| sum + n}
end

def multiply(arr)
  arr.inject(1){|mult, n| mult*n}
end

def power(num, pow)
  i = 1
  res = num
  while i < pow
    res *= num
    i += 1

  end
  res
end

def factorial(num)
  res = num
  while num > 1
    num -=1
    res *= num
  end
  if res == 0
    res = 1
  end
  res
end
