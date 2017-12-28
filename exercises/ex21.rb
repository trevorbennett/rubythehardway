# basic math functions

def add(a,b)
  return a + b
end

def subtract(a,b)
  return a - b
end

def multiply(a,b)
  return a*b
end

def division(a,b)
    return a / b
end

money = add(500, 700)
debt = subtract(money,861)
yoy = multiply(debt, 1.07)
taxes = division(yoy, 1.4)

puts "you will have $#{taxes} at the end of the year"
