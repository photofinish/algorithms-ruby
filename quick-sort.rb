def quick_sort array
  sort(array,0,array.length - 1)
end

def sort(array,st,en)
  puts "#{st}---#{en}"
  return if st>=en
  lt = st
  mid = st
  gt = en
  i = lt + 1
  while i <= gt
    if array[i] < array[lt]
      swap(array,i,mid)
      lt += 1
      i += 1
      mid += 1
    elsif array[i] > array[lt]
      swap(array,i,gt)
      gt -= 1
    else
      lt+=1
      i+=1
    end
  end
  puts lt
  puts gt
  sort(array,st,lt-1)
  sort(array,gt+1,en)
end

def swap ary,i,j
  t = ary[i]
  ary[i] = ary[j]
  ary[j] = t
end

array = [3,1,6,2,3,1,6,2,3,1,2,2,8,8,7,4,9,5,10]
puts array
quick_sort array
puts array
