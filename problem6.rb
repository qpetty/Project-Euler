sum = 0;
square = 0;

for i in 1..100
   sum += i
   square += i*i
end

puts "Difference between the sum of the squares of the first one hundred natural numbers and the square of the sum: #{sum * sum - square}"
