class Month

  attr_reader :day
  
  MONTHS = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
  NUM_SKIPPED_DAYS = [6, 0, 1, 2, 3, 4, 5]
  SKIPPED_DAY = "  "
  TOTAL_DAYS = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

  def find_weekday(month, year)
  #Zeller's Congruence
    
    if month == 01 or month == 1
      month = 13
      year -= 1
    end

    if month == 02 or month == 2
      month = 14
      year -= 1
    end

    q = 1
    m = month #(3 = March, 4 = April, 5 = May, ..., 13 = January, 14 = February)
    k = year % 100
    j = year/100

    #h = weekday (0 = Saturday, 1 = Sunday, 2 = Monday....)
 
    h = (q + ((13*(m+1))/5) + k + (k/4) +(j/4) + (5*j)) % 7
  end

  def initialize(month, year)
    
    @month = MONTHS[month-1]

    @year = year
    @day = find_weekday(month, year)
    @total_days = TOTAL_DAYS[month-1]
    @header = "#{@year}".center(60)
    @header0 = "#{@month}".center(20)
    @header1 = "#{@month} #{@year}".center(20)
    @header2 = "Su Mo Tu We Th Fr Sa"

    if (month == 02) and (year % 4 == 0)
      @total_days = 29
    end
  end

  def print_header
    @header = "#{@month} #{@year}".center(20)
    @header += "\nSu Mo Tu We Th Fr Sa\n"
  end

  def create_month
    line1 = ""
    line2 = ""
    line3 = ""
    line4 = ""
    line5 = ""
    line6 = ""

    skips = NUM_SKIPPED_DAYS[@day]

    (1..7).each do |a|
      if a > skips
        line1 += " #{a-skips} "
      else
        line1 += "   "
      end
    end

    (8..14).each do |a|
      if (a-skips) < 9
        line2 += " #{a-skips} "
      else
        line2 += " #{a-skips}"
      end
    end

    (15..21).each do |a|
      if (a-skips) <= 9
        line3 += " #{a-skips} "
      else
        line3 += "#{a-skips} "
      end
    end

    (22..28).each do |a|
      line4 += "#{a-skips} "
    end

    (29..35).each do |a|
      if (a-skips) <= @total_days
        line5 += "#{a-skips} "
      end
    end

    (36..37).each do |a|
      if (a-skips) <= @total_days
        line6 += "#{a-skips} "
      end
    end

    month_array = [@header, @header0, @header2, line1, line2, line3, line4, line5, line6]
    #print_header
    #puts line1
    #puts line2
    #puts line3
    #puts line4
    #puts line5
    #puts line6/
  end
end

/month = Month.new(ARGV[0].to_i, ARGV[1].to_i)
puts month.print_header
month.create_month/

