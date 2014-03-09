highest_num = 20;

smallest = highest_num

while 1

   ndx = 0
   for i in 2..highest_num
      if smallest % i != 0
         ndx += 1
      end
   end

   if ndx == 0
      puts "Smallest Positive Number: #{smallest}"
      break
   end

   smallest += highest_num
end
