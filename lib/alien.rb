class Alien
  attr_accessor :x,
                :y,
                :name

  def initialize(options={})
    @x = options[:x] || 0
    @y = options[:y] || 0
    @name = options[:name] || 'ET'
  end


  def to_h
    {
      :x => @x,
      :y => @y,
      :name => @name
    }
  end
end