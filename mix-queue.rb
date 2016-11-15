module MixQueue
  attr_accessor :ary, :n
  def push o
    ary[n] = o
  end
  def pop
  end
  def up
  end
  def down
  end
end


array = [3,1,6,2,3,1,6,2,3,1,2,2,8,8,7,4,9,5,10]
puts array.uniq.to_s
