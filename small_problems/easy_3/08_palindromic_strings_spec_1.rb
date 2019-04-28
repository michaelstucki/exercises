require_relative '08_palindromic_strings_1'

describe 'palindrome?' do

  it "tests if a string is a palindrome" do
    palindrome?('madam').should == true
    palindrome?('Madam').should == false
    palindrome?("madam i'm adam").should == false
    palindrome?('356653').should == true
  end

end
