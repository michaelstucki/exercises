=begin
def staggered_case(string)
  new_string = ''
  upper_case = true
  string.length.times do |index|
    char = string[index]
    if char =~ /[a-zA-Z]/
      new_string += upper_case ? char.upcase : char.downcase
      upper_case = !upper_case
    else
      new_string += char 
    end
  end
  new_string
end
=end

def staggered_case(string, toggle_non_alphabetic)
  new_string = ''
  upper_case = true
  string.length.times do |index|
    char = string[index]
    if char =~ /[a-z]/i
      new_string += upper_case ? char.upcase : char.downcase
      upper_case = !upper_case
    else
      new_string += char 
      upper_case = !upper_case if toggle_non_alphabetic
    end
  end
  new_string
end

#puts staggered_case('I Love Launch School!') #==> 'I lOvE lAuNcH sChOoL!'
#puts staggered_case('ALL CAPS') #==> 'AlL cApS'
#puts staggered_case('ignore 77 the 444 numbers') #==> 'IgNoRe 77 ThE 444 nUmBeRs'

puts staggered_case('I Love Launch School!', false) #==> 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS', false) #==> 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers', false) #==> 'IgNoRe 77 ThE 444 nUmBeRs'

puts staggered_case('I Love Launch School!', true) #==> 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS', true) #==> 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers', true) #==> 'IgNoRe 77 ThE 444 nUmBeRs'
