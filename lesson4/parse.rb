require 'csv'

CSV.foreach('wewe.csv') do |f|
  f.each { |t| p t + 'YoHo!' }
end

File.open('new.txt', 'a') do |f|
  10.times do |index|
    f.puts index + 1
  end
end

CSV.open('wewe.csv', 'a') do |csv|
  csv << %w(good verygood super)
  csv << %w(a b 2)
end
