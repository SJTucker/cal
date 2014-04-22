require_relative 'month'

class Year

  attr_reader :month_array

  def initialize(year)
    @year = year
  end

  def create_month_array
    #month = Month.new(1, 
    
    @month_array = Array.new

    (1..12).each do |a|
      month = Month.new(a, @year)
      month = month.create_month
      @month_array << month
    end
  end

  def print_month
    /@month_array.each do |sub_array|
      (0..7).each do |a|
        printf "%-22s", sub_array[a].to_s
      end
    end/

    puts "#{ARGV[0]}\n\n".center(66)
   
    a = 0
    b = 2

    (0..3).each do
      (a..b).each do |a|
        printf "%-22s", @month_array[a][1].to_s
      end
      
      puts "\n"
      (a..b).each do |a|
        printf "%-22s", @month_array[a][2].to_s
      end
      
      puts "\n"
      (a..b).each do |a|
        printf "%-22s", @month_array[a][3].to_s
      end

      puts "\n"
      (a..b).each do |a|
        printf "%-22s", @month_array[a][4].to_s
      end

      puts "\n"
      (a..b).each do |a|
        printf "%-22s", @month_array[a][5].to_s
      end
      
      puts "\n"
      (a..b).each do |a|
        printf "%-22s", @month_array[a][6].to_s
      end
      
      puts "\n"
      (a..b).each do |a|
        printf "%-22s", @month_array[a][7].to_s
      end
      
      puts "\n"
      (a..b).each do |a|
        printf "%-22s", @month_array[a][8].to_s
      end
      puts "\n"
      a += 3
      b += 3
    end
  end
end
