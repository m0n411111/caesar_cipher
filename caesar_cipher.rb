def caesar_cipher(string, shift)
    #return an array of characters in a string
    new_array = string.chars.map do |char|
        #convert letters into ascii numbers 
        new_char = char.ord 
        #for lowercase letters
        if new_char.between?(65,90) 
            new_char = ((new_char + shift) - 65) % 26 + 65
        #for uppercase letters
        elsif new_char.between?(97,122) 
            new_char = ((new_char + shift) - 97) % 26 + 97
        end
        new_array = new_char.chr #convert ascii numbers back to letters
    end
end

caesar_cipher("What a string!", 5).join
#=> "Bmfy f xywnsl!"

