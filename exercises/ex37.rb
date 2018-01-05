#tons of misc stuff

END {puts "I run at the death of the script"}
BEGIN {puts "I run on script start"}

def banana
  puts "fasting sucks"
end

alias cocoa banana
cocoa
banana

while true
  puts "will this run forever?"
  break
end

x = 1
case x
when 1
  puts "case works"
else
  puts "case is FUBAR"
end

class X
  def z
    return 1
  end
end
banana = X.new
defined? Class = "X"
puts banana.z

begin
ensure
  puts "I will run even on error"
end

#how is module different then class?

module Y
  def z
    return 999
  end
end

  include Y
  puts Y.z


# see kolosek/finance_math/lib/finance_math/loan.rb for my example worked
