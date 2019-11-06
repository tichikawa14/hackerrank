require 'json'
require 'stringio'

# Complete the compareTriplets function below.
def compareTriplets(a, b)
  alice_points = 0
  bob_points = 0

  a.zip(b).each do |a_val, b_val|
    if a_val > b_val
      alice_points += 1
    elsif a_val < b_val
      bob_points += 1
    end
  end
  puts "#{alice_points} #{bob_points}"
  [alice_points, bob_points]
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

a = gets.rstrip.split.map(&:to_i)
b = gets.rstrip.split.map(&:to_i)

result = compareTriplets a, b

fptr.write result.join " "
fptr.write "\n"

fptr.close()
