#in line print vars, cool

formatter= "%{a} %{b} %{c} %{d}"

puts formatter % {a:5,b:"lol",d:formatter,c:2/3.0}
