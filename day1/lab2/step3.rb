# author: Denis Ivanov (SJSU)

class Base
  def self.make_fields(fields)

    attr_accessor *fields

    define_method(:initialize) { |*args|
      fields.each_with_index { |f, i|
        instance_variable_set("@" + f, args[i])
      }
    }

    define_method(:inspect) {
      str = self.class.to_s
      fields.each { |f|
        str += ", " + f.to_s + "=" + self.instance_variable_get("@#{f}").to_s
      }
      return str
    }

  end
end

class CSVBase < Base
  def self.inherited(klass)
    # Read first row of CSV file and add fields to klass
    data = File.new("City.csv")
    header = data.gets.chomp
    @fields = header.split(",")
    klass.make_fields(@fields)
    data.close()
  end
end

def make_class(name, fields = [])
  klass = Class.new(Base)
  Object.const_set name.to_s, klass
  klass.make_fields fields
end

# Part 2
=begin

make_class("City", ["name", "country"])
c = City.new("Yverdon", "Swiss")
p c.inspect

=end

# Part 3 and 4

class City < CSVBase
end
c = City.new("Berlin", "Germany")
p c.inspect


