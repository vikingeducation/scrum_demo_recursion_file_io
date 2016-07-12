string = File.read('./data/lorem.txt')

# Case insensitive
# p string.match(/lorem/i)

# Digits
# p string.match(/\d/)

# Wild card characters
# p string.scan(/.o./)
# p string.scan(/l(...)m/i)

# Begin and end line
# p string.scan(/^t(....)/)
# p string.scan(/(....)e$/)

# Strict quanity
# p string.scan(/[^\Wa]{4}/)


# Quantifiers
# p string.scan(/..[c]+../)
# p string.scan(/..[c]?../)
# p string.scan(/..[c]{2}../)

# Greedy results
# p string.scan(/l(.*)m/)
# p string.scan(/l([^m]+)m/)


# Escaping characters
# string.scan(/\//)
# string.scan(/\\/)
# string.scan(/\[\]/)
# string.scan(/\(\)/)

# Global substituition
# p string.gsub(/lorem/i, 'HELLOOOOOOOOOO LOREM!')


# OR
# p string.scan(/(lorem|ipsum)/i)


