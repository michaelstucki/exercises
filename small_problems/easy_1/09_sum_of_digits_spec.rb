require_relative '09_sum_of_digits'

describe 'sum' do

  it "sums digits in a number" do
    sum(23).should == 5
    sum(496).should == 19
    sum(123_456_789) == 45
  end

end
