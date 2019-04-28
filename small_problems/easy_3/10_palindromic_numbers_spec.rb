require_relative '10_palindromic_numbers'

describe 'palindromic_number?' do

  it "test if a number is a palindrome" do
    palindromic_number?(34543) == true
    palindromic_number?(123210) == false
    palindromic_number?(22) == true
    palindromic_number?(5) == true
  end

end
