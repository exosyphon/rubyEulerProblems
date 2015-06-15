require_relative './even_fib'

describe EvenFib do
  describe '#call' do
    it 'should sum the even fibonacci values from 1 to 33' do
      EvenFib.new.call.should == 4613732
    end
  end
end
