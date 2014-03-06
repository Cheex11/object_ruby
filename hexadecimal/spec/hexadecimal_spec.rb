require('rspec')
require('hexadecimal')

describe('hexadecimal') do
  it('takes a one digit hexadecimal number and converts it to decimal') do
    hexadecimal("a").should eq 10
  end

  it('takes a 10 digit hexadecimal number and converts it to decimal') do
    hexadecimal("fbc7e88a1a").should eq 1081390696986
  end

end
