filename = "City.csv"
data = File.new(filename)
header = data.gets.chomp
fields = header.split(",")
p fields

data.each { |line| 
  p line.chomp.split(",")
}
data.close

# Returns a new String with the given record separator 
# removed from the end of str (if present). 
# If $/ has not been changed from the default Ruby record separator, 
# then chomp also removes carriage return characters (that is it will remove \n, \r, and \r\n).