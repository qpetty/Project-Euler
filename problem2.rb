total = 0;

next_num = 2;
prev_num = 1;

while next_num < 4000000 do
   if next_num % 2 == 0
      total += next_num
   end

   temp = next_num
   next_num += prev_num
   prev_num = temp

end

puts "Sum of all even Fibonacci number before 4,000,000: #{total}"
