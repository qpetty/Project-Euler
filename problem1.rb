total = 0;

for i in 1..999
   if i % 3 == 0 || i % 5 == 0
      total += i
   end
end

puts "Sum of all Multiples of 3 or 5: #{total}"
