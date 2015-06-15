class EvenFib
  FIB_NUM_UNDER_THRESHOLD = 33

  def call
    fib_summation
  end

  private

  def fib_summation
    (1..FIB_NUM_UNDER_THRESHOLD).reduce(0) do |sum, num|
      result = fib num 
      sum+=result if result % 2 == 0
      sum
    end
  end

  def fib(num)
    if num == 0 || num == 1
      1
    else
      fib(num-1) + fib(num-2)
    end
  end
end

puts EvenFib.new.call
