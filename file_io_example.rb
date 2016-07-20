require_relative 'lib/my_serializer'
require_relative 'lib/my_deserializer'
require_relative 'lib/alien'


FILENAME = './data/text.txt'

def open_file(mode)
  File.open(FILENAME, mode)
end

# 1. r

# puts 'Reading with "r"'
# file = open_file('r')
# file.readlines.each do |line|
#   p line
# end
# file.close


# 2. r+

# puts 'Reading/writing with "r+"'
# file = open_file('r+')
# p file.read(2)
# file.write("!!!!")
# p file.read(2)
# file.close


# 3. w

# puts 'Writing with "w"'
# file = open_file('w')
# file.write('Overwriting file!')
# file.close

# file = open_file('r')
# p file.read(2)
# file.close


# 4. w+

# puts 'Reading/writing with "w+"'
# file = open_file('w+')
# p file.read(2)
# file.write('Overwriting file again!')
# p file.read(2)
# file.close

# file = open_file('r')
# p file.read(2)
# file.close


# 5. a

# puts 'Writing with "a"'
# file = open_file('a')
# file.write("aaaa")
# file.close


# 6. a+

# puts 'Reading/writing with "a+"'
# file = open_file('a+')
# p file.read(2)
# file.write('Overwriting file again!')
# p file.read(2)
# file.close


# ----------------------------------------
# Seralization
# ----------------------------------------



# my_serializer = MySerializer.new
# my_deserializer = MyDeserializer.new

# # Read/write YAML
# File.open(FILENAME, 'w') do |f|
#   f.write(my_serializer.yamlize(Alien.new))
# end
# file = open_file('r')
# p my_deserializer.unyamlize(file.read)

# # Read/write JSON
# File.open(FILENAME, 'w') do |f|
#   f.write(my_serializer.jsonify(Alien.new.to_h))
# end
# file = open_file('r')
# p my_deserializer.unjsonify(file.read)










