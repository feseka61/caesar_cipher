#method that takes the text end shifts every letter
def caesar_cipher(text, shift)
  new_text = ""
  text.each_char do |letter|
    if letter.ord >= 65 && letter.ord <= 90 #char.ord gives the integer value of the character, "A" = 65, "Z" =90 
      new_ord = letter.ord + shift
      if new_ord > 90 #checking for wrap from Z to A.
        new_ord -= 26 
      end
    elsif  letter.ord >= 97 && letter.ord <= 122 # "a" = 97, "z" = 122
      new_ord = letter.ord + shift
      if new_ord > 122 #checking for wrap from z to a.
        new_ord -= 26 
      end
    else  #for all other characters in text
      new_ord = letter.ord 
    end
    new_letter = new_ord.chr #transforms integer value to corresponding character
    new_text += new_letter
  end
  return new_text
end

puts caesar_cipher("z",1)

puts caesar_cipher("Z",3)

puts caesar_cipher("heLLo world!",1)