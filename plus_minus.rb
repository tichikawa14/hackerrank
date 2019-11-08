#!/bin/ruby

require 'json'
require 'stringio'

# Complete the plusMinus function below.
def plusMinus(arr)
  positive_num = 0
  negative_num = 0
  zero_num = 0

  arr.each do |n|
    if n > 0
      positive_num += 1
    elsif n < 0
      negative_num += 1
    else
      zero_num += 1
    end
  end

  begin
    puts positive_num.to_f / arr.size
    puts negative_num.to_f / arr.size
    puts zero_num.to_f / arr.size
  rescue ZeroDivisionError
    puts 0
  end
end

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

plusMinus arr
