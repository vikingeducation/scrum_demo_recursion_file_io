# Helper
class String
  def pluralize(n)
    n == 1 ? self : "#{self}s"
  end
end



def bottles_of_beer(n)
  # Input validation
  raise ArgumentError unless n.is_a?(Fixnum)

  # Base case!
  return if n <= 0

  # Setup bottles
  bottles = "bottle".pluralize(n)
  next_bottles = "bottle".pluralize(n - 1)

  # Output song
  puts "#{n} #{bottles} of beer on the wall,"
  puts "#{n} #{bottles} of beer,"
  puts "You take one down and pass it around..."
  puts "#{n - 1} #{next_bottles} of beer on the wall."
  puts

  # Call recursively with next number
  bottles_of_beer(n - 1)
end


# Visualizing recursion
class Array
  def dive(n)
    if n > 0
      self << []
      self.first.dive(n - 1)
      # self << n
    end
    # p self
    self
  end
end






