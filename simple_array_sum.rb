
#!/bin/ruby

#
# Complete the simpleArraySum function below.
#
def simpleArraySum(ar)
  #
  # Write your code here.
  #
  ar.sum

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

ar_count = gets.to_i

ar = gets.rstrip.split(' ').map(&:to_i)

result = simpleArraySum ar

fptr.write result
fptr.write "\n"

fptr.close()

strArr = gets.rstrip.split

count = 0
strArr.each do |str|
  count += 1 unless str !~ (/[\A0-9A-Z]/)
end

puts count

