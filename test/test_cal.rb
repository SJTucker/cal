require 'test/unit'
require 'month'
#require_relative '../cal'

class CalTest < Test::Unit::TestCase



  def test_0a_find_weekday_of_month_for_the_first_day_of_nonspecial_month
    #Tuesday = 3
    month = Month.new(04, 2014)
    h = month.day
    assert (3 === h)
  end

  def test_0b_find_weekday_of_month_for_leap_year
    #Sunday = 1
    month = Month.new(04, 2012)
    h = month.day
    assert (1 === h)
  end

  def test_0c_find_weekday_of_early_year
    #Tuesday = 3
    month = Month.new(04, 1800)
    h = month.day
    assert (3 === h)
  end

  def test_0d_find_weekday_feb_of_early_year
    #Saturday = 0
    month = Month.new(02, 1800)
    h = month.day
    assert (1 === h)
  end

  def test_01a_print_header
    month = Month.new(02, 2012)
    output = month.print_header
    expected_output = <<EOS
    February 2012
Su Mo Tu We Th Fr Sa
EOS
    assert_equal expected_output, output
  end

 # def test_01b_print_month
   # month = Month.new
    #output = `ruby ~/Ruby/cal/lib/cal.rb 02 2012`
   # output = `./cal.rb 02 2012`
   # print_month
   # expected_output = <<EOS
    #   02 2012
#Su Mo Tu We Th Fr Sa
# 1  2  3  4  5  6  7
# 8  9 10 11 12 13 14
#15 16 17 18 19 20 21
#22 23 24 25 26 27 28
#29 30 31
#EOS
#    assert_equal expected_output, output
#  end
    

end
