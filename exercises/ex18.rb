#method time

def double_print(*args)
    arg1, arg2 = args
    puts "arg1: #{arg1}, and arg2: #{arg2}"
end

def double_print_with_specified_arg_count(arg1,arg2)
    puts "arg1: #{arg1}, and arg2: #{arg2}"
end

def print_the_thing(arg)
  puts "arg: #{arg}"
end

def no_print()
  puts "git rekt son"
end

double_print("banana","apple")
double_print_with_specified_arg_count("candy","dolphins")
print_the_thing("the thing :^)")
no_print()
