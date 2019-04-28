require_relative '07_odd_lists'

describe 'oddities' do

  it "selects ever other item from an array" do
    oddities([2, 3, 4, 5, 6]).should == [2, 4, 6]
    oddities([1, 2, 3, 4, 5, 6]).should == [1, 3, 5]
    oddities(['abc', 'def']).should == ['abc']
    oddities([123]).should == [123]
    oddities([]).should == []
  end

end
