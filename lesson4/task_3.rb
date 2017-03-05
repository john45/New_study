require 'csv'
# generate temp in csv
# CSV.open('temperature.csv','wb') do |f|
#   12.times do |month|
#     28.times do |day|
#       f << ["#{day+1}.#{month+1}", "#{(month+1) >= 11 || (month+1) <= 3 ? rand(-20..5) : rand(5..35)}"]
#     end
#   end
# end

date_temp = {}
ds_in_mths = {}
CSV.foreach('temperature.csv') do |f|
  month, temp = f[0].split('.')[1], f[1].to_i
  ds_in_mths.key?(month) ? ds_in_mths[month] += 1 : ds_in_mths[month] = 1
  date_temp.has_key?(month) ? date_temp[month] += temp : date_temp[month] = temp
end

ds_in_mths.each { |k, v| date_temp[k] = (date_temp[k]*1.0/v).round(2) }
p date_temp
