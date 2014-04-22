#!/usr/bin/env ruby

#pt - 1 : months (don't worry about printing years)
# edge-case : february (variable number of days)
#when printing months-> months that take six lines to print
#                    -> short months (Feb 2015)
#

class Cal

  longMonths = [03, 05, 07, 9, 10, 12, 13]
  attr_accessor :max_length


  def find_weekday(month, year)
  #Zeller's Congruence
 
    q = 1
    m = month #(3 = March, 4 = April, 5 = May, ..., 13 = January, 14 = February)
    k = year % 100
    j = year/100

    #h = weekday (0 = Saturday, 1 = Sunday, 2 = Monday....)
 
    h = (q + ((13*(m+1))/5) + k + (k/4) +(j/4) + (5*j)) % 7
  end

  def max_length
    string = <<EOS
       1  2  3  4  5
EOS
    @max_length = string.length
  end
  
  def print_header
    header = "       "
    ARGV.each do |a|
      header += a.to_s + " "
    end
    header += "\nSu Mo Tu We Th Fr Sa"
    puts header
  end

  def print_days
    h = find_weekday(ARGV[0].to_i, ARGV[1].to_i)
    days = " "

    if h == 0
      days += "                  "
    else
      (1...h).each do |x|
        days += "   "
      end
    end

  
    (1..31).each do |x|
      if (days.length == @max_length) or (days.length == (@max_length*2))
        days += "\n " + x.to_s + "  "
      else
        days += x.to_s + " "
      end
    end
    puts days
  end

  def print_month
    max_length
    print_header
    print_days


  


  #puts date
 

  #string = ""
  #loop
    #if i % 7 == 0
     # string += " "
  end
end

cal = Cal.new
cal.print_month


