require "byebug"
def no_dupes?(arr)
    f = []
    h = Hash.new(0)
    # debugger
    arr.each do |el|
        # debugger
        h[el] +=1
    end
    # debugger
    h.each do |k, v|
        # debugger
        f << k if v == 1
    end
    # debugger
    f
end

# Examples
# p no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
# p no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
# p no_dupes?([true, true, true])            # => []



def no_consecutive_repeats?(arr)
    arr.each_with_index do |el, i|
        return false if arr[i] == arr[i+1]
    end
    return true
end

# Examples
# p no_consecutive_repeats?(['cat', 'dog', 'mouse', 'dog'])     # => true
# p no_consecutive_repeats?(['cat', 'dog', 'dog', 'mouse'])     # => false
# p no_consecutive_repeats?([10, 42, 3, 7, 10, 3])              # => true
# p no_consecutive_repeats?([10, 42, 3, 3, 10, 3])              # => false
# p no_consecutive_repeats?(['x'])                              # => true


def char_indices(str)
    h = Hash.new{|h, k| h[k] = []}
    str.each_char.each_with_index {|c, i| h[c] << i}
    h
end

# Examples
# p char_indices('mississippi')   # => {"m"=>[0], "i"=>[1, 4, 7, 10], "s"=>[2, 3, 5, 6], "p"=>[8, 9]}
# p char_indices('classroom')     # => {"c"=>[0], "l"=>[1], "a"=>[2], "s"=>[3, 4], "r"=>[5], "o"=>[6, 7], "m"=>[8]}

def longest_streak(str)
    temp = ""
    l = ""
    i = 0
    while i < str.length-1

        i +=1
    end






    # str.each_char.with_index do |c, i|
    #     if i == 0
    #         temp += str[i]
    #     elsif str[i] == str[i-1]
    #         temp += str[i]
    #     else
    #         l = temp if l.length <= temp.length 
    #         temp = ""
    #     end
    # end
    l
end
# come back to this qestion

# Examples
# p longest_streak('a')           # => 'a'
# p longest_streak('accccbbb')    # => 'cccc'
# p longest_streak('aaaxyyyyyzz') # => 'yyyyy
# p longest_streak('aaabbb')      # => 'bbb'
# p longest_streak('abc')         # => 'c'



def bi_prime?(num)
    # counter = 0
    arr = []
    (2...num).each do |fact|
        if (prime?(fact) == true) && (num % fact ==0)
            # counter += 1
            arr << fact
            # p arr
            return true if fact**2 == num
        end
    end
    arr.each do |el|
        arr.each do |el2|
            return true if el * el2 == num
        end
    end
    false
end

def prime?(num)
    return false if num < 2
    (2...num).each do |n|
        return false if num % n == 0
    end 
    true
end

# p bi_prime?(14)   # => true
# p bi_prime?(22)   # => true
# p bi_prime?(25)   # => true
# p bi_prime?(94)   # => true
# p bi_prime?(24)   # => false
# p bi_prime?(64)   # => false


def vigenere_cipher(message, keys)
    alph = ("abcdefghijklmnopqrstuvwxyz")
    key_seq = []
    new_word = ""
    while key_seq.length < message.length
        keys.each {|key| key_seq << key}
    end
    message.each_char.with_index do |c, i|
        new_word += alph[(alph.index(c) + key_seq[i]) % 26]
    end
    new_word    

end
# Examples
# p vigenere_cipher("toerrishuman", [1])        # => "upfssjtivnbo"
# p vigenere_cipher("toerrishuman", [1, 2])     # => "uqftsktjvobp"
# p vigenere_cipher("toerrishuman", [1, 2, 3])  # => "uqhstltjxncq"
# p vigenere_cipher("zebra", [3, 0])            # => "ceerd"
# p vigenere_cipher("yawn", [5, 1])             # => "dbbo"


def vowel_rotate(str)
    # iterate twice
    arr_c = []
    arr_i = []
    f_word = ""
    str.each_char.with_index do |c, i|
        if "aeiou".include?(c)
            arr_c << c
            arr_i << i
        end
    end

    arr_i.each_with_index do |i_s, i_i|
        str[i_s] = arr_c[i_i-1]
    end
    str
end

# Examples
# p vowel_rotate('computer')      # => "cempotur"
# p vowel_rotate('oranges')       # => "erongas"
# p vowel_rotate('headphones')    # => "heedphanos"
# p vowel_rotate('bootcamp')      # => "baotcomp"
# p vowel_rotate('awesome')       # => "ewasemo"

