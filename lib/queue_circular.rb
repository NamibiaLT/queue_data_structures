class MyCircularQueue
=begin
    Initialize your data structure here. Set the size of the queue to be k.
    :type k: Integer
=end
    def initialize(k)
        @k = k
    end

    arr = Array.new(@k)

=begin
    Insert an element into the circular queue. Return true if the operation is successful.
    :type value: Integer
    :rtype: Boolean
=end
    def en_queue(value)
      if arr.nil?
        arr.shift
      end
      arr << value
      arr.include?(value)
    end

=begin
    Delete an element from the circular queue. Return true if the operation is successful.
    :rtype: Boolean
=end
    def de_queue
      arr.delete(arr.sample(1, random: rng))
      arr.size < @k
    end

=begin
    Get the front item from the queue.
    :rtype: Integer
=end
    def front()
      arr.first # also written as: arr[0] || arr.at(0)
    end

=begin
    Get the last item from the queue.
    :rtype: Integer
=end
    def rear()
      arr.last # also written as: arr[-1]
    end

=begin
    Checks whether the circular queue is empty or not.
    :rtype: Boolean
=end
    def is_empty()
      arr.empty?
    end

=begin
    Checks whether the circular queue is full or not.
    :rtype: Boolean
=end
    def is_full()
      arr.size == @k
    end
end
