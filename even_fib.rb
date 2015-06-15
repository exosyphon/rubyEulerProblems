class EvenFib
  def call
    (1..33).reduce(0) do |sum, num|
      result = fib num 
      if result % 2 == 0
        sum+=result
      end
      sum
    end
  end

  private

  def fib(num)
    if num == 0 || num == 1
      1
    else
      fib(num-1) + fib(num-2)
    end
  end
end

puts EvenFib.new.call
