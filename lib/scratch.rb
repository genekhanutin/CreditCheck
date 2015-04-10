# Valid: 5541808923795240, 4024007136512380, 6011797668867828
# Invalid: 5541801923795240, 4024007106512380, 6011797668868728

# The formula verifies a number against its included check digit, which is usually appended to a partial account number to generate the full account number. 

# This full account number must pass the following test:
# from the rightmost digit, which is the check digit, moving left, double the value of every second digit
# if product of this doubling operation is greater than 9 (e.g., 7 * 2 = 14), then sum the digits of the products (e.g., 10: 1 + 0 = 1, 14: 1 + 4 = 5).
# take the sum of all the digits
# if and only if the total modulo 10 is equal to 0 then the number is valid

# starting with -1 (right most digit) move to every other using modulo
# if the number % == 0 it will be doubled
# if ((number % == 0) * 2) is greater than 10, add the digits of that number
# sum of digits is equal to doubled number - 9
# add the results and remaining numbers; if the total % == 0 the number is valid

number = "6011797668867828"  # => "6011797668867828"

number = number.reverse  # => "8287688667971106"

a = number[0].to_i  # => 8
  
b = number[1].to_i * 2  # => 4
  if b > 9              # => false
    b -= 9
  else
    b                   # => 4
  end                   # => 4
  
c = number[2].to_i  # => 8

d = number[3].to_i * 2  # => 14
  if d > 9              # => true
    d -= 9              # => 5
  else
    d
  end                   # => 5

e = number[4].to_i  # => 6

f = number[5].to_i * 2  # => 16
  if f > 9              # => true
    f -= 9              # => 7
  else
    f
  end                   # => 7
g = number[6].to_i      # => 8

h = number[7].to_i * 2  # => 12
  if h > 9              # => true
    h -= 9              # => 3
  else
    h
  end                   # => 3

i = number[8].to_i  # => 6

j = number[9].to_i * 2  # => 14
  if j > 9              # => true
    j -= 9              # => 5
  else
    j
  end                   # => 5

k = number[10].to_i  # => 9

l = number[11].to_i * 2  # => 14
  if l > 9               # => true
    l -= 9               # => 5
  else
    l
  end                    # => 5
m = number[12].to_i      # => 1

n = number[13].to_i * 2  # => 2
  if n > 9               # => false
    n -= 9
  else
    n                    # => 2
  end                    # => 2

o = number[14].to_i * 2  # => 0
  if o > 9               # => false
    o -= 9
  else
    o                    # => 0
  end                    # => 0

p = number[15].to_i * 2  # => 12
  if p > 9               # => true
    p -= 9               # => 3
  else
    p
  end                    # => 3

sum = a+b+c+d+e+f+g+h+i+j+k+l+m+n+o+p  # => 80

if sum % 10 == 0         # => true
  "Card number valid"    # => "Card number valid"
else
  "Card number invalid"
end                      # => "Card number valid"