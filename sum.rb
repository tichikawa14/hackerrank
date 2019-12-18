def integer_multiplication(num_str)
  num_array = num_str.split
  num_array[0].to_i * num_array[1].to_i
end


word_count('one five two ten five one two five')

def word_count(str)
  str_array = str.split
  new_hash = str_array.group_by(&:itself).map{ |key, value| [key, value.count] }.to_h

  new_hash.each do |k, v|
    puts "#{k}:#{v}"
  end
end