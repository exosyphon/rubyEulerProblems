class LargestPrimeFactor
  LARGE_NUMBER = 600851475143
  TEST_NUMBER = 13195

  def call(seed)
    prime_factors = []
    product_sum = 1
    current_prime = 2 

    while product_sum < seed 
      if seed % current_prime == 0 && is_prime?(current_prime)
        prime_factors << current_prime
        product_sum *= current_prime
      end
      current_prime += 1
    end
    prime_factors.last
  end

  private

  def is_prime?(test_number)
    (2...test_number).all? do |num|
      test_number % num != 0
    end
  end
end

p "first test #{LargestPrimeFactor.new.call(LargestPrimeFactor::TEST_NUMBER)}"
p "real test #{LargestPrimeFactor.new.call(LargestPrimeFactor::LARGE_NUMBER)}"
