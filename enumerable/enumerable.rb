module Enumerable
   def my_each
     for i in self
      yield i
     end
   end

   def my_each_with_index
      for i in self
         yield i, self.index(i)
      end
   end

   def my_select
      duplicate = []
      for i in self
         duplicate << i if yield i
      end
      duplicate
   end

   def my_all?
      duplicate = []
      for i in self
        duplicate.push(yield i)
      end
      for i in duplicate
         if i
            return true
         else
            return false
         end
      end
   end

   def my_any?
      duplicate = []
      for i in self
        duplicate.push(yield i)
      end
      count = 0
      for i in duplicate
         count += 1 if i
      end
      if count > 0
         return true
      else
         return false
      end
   end

   def my_none?
      duplicate = []
      for i in self
        duplicate.push(yield i)
      end
      count = 0
      for i in duplicate
         count += 1 if i
      end
      if count == 0
         return true
      else
         return false
      end
   end

   def my_count(optional = nil)
      if block_given?
         duplicate = []
         for i in self
            duplicate << i if yield i
         end
         return duplicate.size
      elsif optional != nil
         count = 0
         for i in self
            count += 1 if i == optional
         end
         return count
      else
         return self.size
      end
   end

   def my_map
      if self.is_a?(Array)
         duplicate = self.dup
         for i in duplicate
            i = yield i
         end
         return duplicate
      elsif self.is_a?(Range)
         duplicate = []
         for i in self.to_a
            duplicate.push(yield i)
         end
         return duplicate
      else
      end
   end

   def my_inject(optional = nil)
      if optional

      else

      end

   end

end
