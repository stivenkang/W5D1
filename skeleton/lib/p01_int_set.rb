class MaxIntSet
  attr_reader :store
  def initialize(max)
    @store = Array.new(max, false)
    # @store = Array.new(0..max) {Array.new(false)}
  end

  def insert(num)
    if num < store.length && num >= 0
      store[num] = true
    else
      raise "Out of bounds"
      return false
    end
  end

  def remove(num)
    store[num] = false
  end

  def include?(num)
    return true if store[num] == true
    false
    # return true if store.include?(num)
  end

  private

  def is_valid?(num)
  end

  def validate!(num)
  end
end


class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
    @store[num] = true
  end

  def remove(num)
    @store[num] = false
  end

  def include?(num)
    return true if @store[num] == true
    false
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    @store[num % num_buckets]
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
    @store << num if @store[num].count == 0
  end

  def remove(num)

  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    @store[num % num_buckets]
  end

  def num_buckets
    @store.length
  end

  def resize!
  end
end
