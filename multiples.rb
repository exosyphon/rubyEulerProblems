def call
  (0..999).reduce(0) do |sum, x|
    if x % 5 == 0 || x % 3 == 0
      sum += x
    end
    sum
  end
end

puts "answer #{call}"
