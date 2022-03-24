def is_letter?(char)
    char.match?(/[[:alpha:]]/)
end

def is_upper?(char)
    char.match?(/[[:upper:]]/)
end

def caesar_cipher(message, shift)
    coded_message = ""

    message.each_char do |c|
        new_letter_code = c.ord + shift

        if not is_letter?(c)
            coded_message += c
            next
        end

        if is_upper?(c)
            if new_letter_code > 90
                new_letter_code = 65 + (new_letter_code - 91)
                coded_message += new_letter_code.chr
            else
                coded_message += new_letter_code.chr
            end
        else
            if new_letter_code > 122
                new_letter_code = 97 + (new_letter_code - 123)
                coded_message += new_letter_code.chr
            else
                coded_message += new_letter_code.chr
            end
        end
    end
    puts coded_message
end

caesar_cipher("What a string!", 5)