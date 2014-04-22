require_relative 'lib/month'
require_relative 'lib/year'

if ARGV.length == 1
  year = Year.new(ARGV[0].to_i)
  year.create_month_array
  year.print_month
else
  month = Month.new(ARGV[0].to_i, ARGV[1].to_i)
  month.print_header
  print = month.create_month
  puts print[3..8]
end
