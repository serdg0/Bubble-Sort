arr = [5,6,4,1,3,2,7,9,8]
strings = ["hi", "hello", "hey"]

module Enumerable

   def bubble_sort
       i = self.size
       while i >= 0
           opt = 0
           j = 0
           while j <= i
               if self[j + 1] != nil && self[j + 1] < self[j]
                   swapper = self[j]
                   self[j] = self[j + 1]
                   self[j + 1] = swapper
                   opt += 1
               end
               j += 1
           end
           if opt === 0
             return self
           end
           i -= 1
       end
       self
   end

   def bubble_sort_by
       i = self.size
       while i >= 0
           opt = 0
           j = 0
           while j <= i
               if self[j + 1] != nil && yield(self[j],self[j + 1]) > 0
                   swapper = self[j]
                   self[j] = self[j + 1]
                   self[j + 1] = swapper
               end
               j += 1
           end
           if opt === 0
             return self
           end
           i -= 1
       end
       self
   end

end
puts strings.bubble_sort_by{|x,y| x.length - y.length}
print arr.bubble_sort