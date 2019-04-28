require_relative '06_exclusive_or'

describe 'xor?' do

  it "implements exclusive or" do
    xor?(true, true).should == false
    xor?(true, false).should == true
    xor?(false, true).should == true
    xor?(false, false).should == false
  end

end
