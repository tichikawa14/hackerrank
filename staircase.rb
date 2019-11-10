#!/bin/ruby

require 'json'
require 'stringio'

# Complete the staircase function below.
def staircase(n)
  (1..n).each do |i|
    print (" " * (n - i) + "#" * i)
    print "\n" if i < n
  end
end

n = gets.to_i

staircase n
