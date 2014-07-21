# Step 1

You'll need to know how to read data from a file in Ruby. It's simple. Just make a file City.csv as indicated in the lecture slides, run this code, and see what it does.
```
filename = "City.csv"
data = File.new(filename)
header = data.gets.chomp
fields = header.split(",")
p fields
data.each { |line| 
  p line.chomp.split(",")
}
data.close
```
What is the significance of chomp? (Try it without.)

# Step 2
Write a class CSVRecord that can be used as follows:
```
r = CSVRecord.new("City", 1)
p r.name # Prints Yverdon
```
In the constructor, read the first line from the file with the given name and extension .csv. Stash away the headers in an instance field @fields. Then read the given record (or, for simplicity, just the first one) into another instance field @record.

In method_missing, find out the matching field and return the corresponding value. (Remember not to define it on self in this case.)

A good way to start is to just print the name parameter in method_missing

Hint: The first argument of method_missing is a symbol, not a string.

Hint: You need to find some way of getting the position of an element in an array.

What is your code?

How can you deal with assignments
``` r.name = "Lausanne" ```
Hint: Just print out the method name in method_missing.

You don't have to implement this—just tell me what will work.

