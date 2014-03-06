require('rspec')
require('calculator_words')

describe('calculator_words') do
  it('it returns the sum of 2 single digit numbers') do
    calculator_words("What is 5 plus 3?").should(eq(8))
  end
  it('returns the sum of 2 double digit numbers') do
    calculator_words("what is 211 plus 79000").should eq 79211
  end
  it('returns any number with any inputted operated equations') do
    calculator_words("what is 3 to the 4th power?").should eq 81
  end
  it('returns any number with multiple inputted operators in equation') do
    calculator_words("what is 3 times 3 plus 5?").should eq 14
  end
  it('returns any number with any inputted operated equations with decimals') do
    calculator_words("what is 5.12 times 3?").should eq 15.36
  end
end
