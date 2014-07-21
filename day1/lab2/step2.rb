class CSVRecord
  attr_accessor :fields, :values

  def initialize(filename, i)

    data = File.new(filename + ".csv")
    header = data.gets.chomp
    @fields = header.split(",")
    
    c = 0
    data.each{ |line| 
      c += 1
      if c == i
        then 
          @values = line.chomp.split(",")
        end
      # p(line)
    }
    data.close()

  end

  def method_missing(name, *args)
    i = @fields.index(name.to_s)
    if !i.nil?
      then
        @values[i]
      else
        super.method_missing(name, *args)
      end
  end

end

r = CSVRecord.new("City", 2)
r.country
r.name