# Practice Queue In and Out structures
# THe first element added to the queue gets removed first
# The next element added to the queue gets positioned in last place

class InOutQueue
  attr_reader :arr
  def initialize(arr)
    @arr = arr
  end

  def dequeue
    @arr.delete_at(0)
  end

  def enqueue(element)
      @arr << element
  end
end
