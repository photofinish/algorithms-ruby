module MergeSort
  def sort array
    pat array, 0, array.length-1
  end

  def pat array, lt, gt
    return if gt == lt
    mid = (gt-lt+1)%2 == 0 ? lt+(gt-lt)/2 : lt+(gt-lt)/2
    puts "pat #{lt} : #{gt} to #{lt} - #{mid} and #{ mid+1} - #{gt}"
    pat array, lt ,mid
    pat array, mid+1, gt
    merge array, lt,mid,mid+1,gt
  end

  def merge ary, lt, gt, st, en
    puts "merge #{ary[lt..gt].to_s} and #{ary[st..en].to_s}"
    t_ary = []
    i = lt
    j = st
    n=0
    while i <= gt or j<= en do
      puts t_ary.to_s
      if i> gt
        t_ary[n] = ary[j]
        j+=1
      elsif j>en
        t_ary[n] = ary[i]
        i+=1
      else
        if ary[i] > ary[j]
          t_ary[n] = ary[j]
          j+=1
        else
          t_ary[n] = ary[i]
          i+=1
        end
      end
      n+=1
    end
    0.upto(t_ary.length-1) do |m|
      ary[lt+m] = t_ary[m]
    end
    puts "merged #{t_ary.to_s}"
  end

  def check array
    0.upto(array.length-2) do |i|
      return false if array[i]>array[i+1]
    end
    true
  end
end

include MergeSort
array = [3,1,6,2,3,1,6,2,3,1,2,2,8,8,7,4,9,5,10]
puts array.to_s
sort array
puts array.to_s

array = [1,3,5,7,9,2,4,5,6,7,9]
puts array.to_s
merge array,0,4,5,10
puts check array
