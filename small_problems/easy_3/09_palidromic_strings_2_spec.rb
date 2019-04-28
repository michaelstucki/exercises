require_relative '09_palidromic_strings_2'

describe 'real_palindrome?' do

  it "case-insenstive test of palindromic string" do
    real_palindrome?('madam') == true
    real_palindrome?('Madam') == true
    real_palindrome?("Madam, I'm Adam") == true
    real_palindrome?('356653') == true
    real_palindrome?('356a653') == true
    real_palindrome?('123ab321') == false
  end

end
