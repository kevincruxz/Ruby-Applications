def caesar_cipher(user_msg, factor)
    str_array = user_msg.split("")
    cipher = str_array.map do |char|
        letter = char.ord
        if letter >= 97 && letter <= 122
            letter += factor
            if letter > 122
                until letter >= 97 && letter <= 122
                    letter -= 26 
                end
                letter.chr
            end
            letter.chr
        elsif letter >= 65 && letter <= 90
            letter += factor
            if letter > 90
                until letter >= 65 && letter <= 90
                    letter -= 26 
                end
                letter.chr
            end
            letter.chr
        else
            letter.chr
        end
    end
    cipher.join
end
    
print "Write your message to encrypt: "
user_inp_message = gets.chomp
print "Write your encryption factor: "
user_factor = gets.chomp.to_i
    
puts caesar_cipher(user_inp_message, user_factor)
    