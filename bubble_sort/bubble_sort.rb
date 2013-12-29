def bubble_sort(array)
   a = array.dup
   (a.length - 1).times  do
      i = 0
      begin
         if a[i] > a[i + 1]
            a[i], a[i + 1] = a[i + 1], a[i]
         end
         i += 1
      end until i == a.length - 1
   end
   a
end

def bubble_sort_by(array, &block)
   if block
      unless block.parameters.empty?
          a = array.dup
          i = 0
          begin
            if block.call(a[i], a[i + 1]) < 0
               a[i], a[i + 1] = a[i + 1], a[i]
            end
            i += 1
          end until i == a.length - 1
      end
      a
   end
end
