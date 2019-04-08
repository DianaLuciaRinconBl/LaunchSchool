input
string
output
an array of substrings which are palindromes

Explicit requirements
  - every substring that is a palindrome should be returned
  - consider palindrome words case sensitive
  - empty strings should return an empty array

Implicit requirements
  - Retuned words should be objects in an array


  PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []




def substrings(str)
  result = []
  start_substring_idx = 0
  end_substring_idx = start_substring_ind + 1

  loop do
    break if start_substring_idx == (str.size - 1)
    loop do
      break if end_substring_idx == str.size
      result << str[start_substring_idx..end_substring_idx]
      end_substring_idx += 1
    end
    start_substring_idx += 1
    end_substring_idx = start_substring_idx +1
  end
  result
end

str = "halo"
