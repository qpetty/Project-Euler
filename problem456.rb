def triangle_area(a, b, c)
   first = a[0] * (b[1] - c[1])
   second = b[0] * (c[1] - a[1])
   third = c[0] * (a[1] - b[1])

   return ((first + second + third) / 2.0).abs
end

n = 2000000
p = []

for i in 1..n
   xn = 1248 ** i % 32323 - 16161
   yn = 8421 ** i % 30103 - 15051
   p << [xn, yn]
end

total = 0
for i in 0..p.length - 3
   for j in (i+1)..p.length - 2
      for k in (j+1)..p.length - 1
         total_area = triangle_area(p[i], p[j], p[k])

         origin_triangles = triangle_area(p[i], p[j], [0,0])
         origin_triangles += triangle_area(p[i], [0,0], p[k])
         origin_triangles += triangle_area([0,0], p[j], p[k])
         #puts origin_triangles

         if origin_triangles == total_area && total_area != 0.0
            total += 1
         end
      end
   end
end

puts total
