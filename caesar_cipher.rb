def caesar_cipher(text, shift=0)
    return text.split('').map{ |char| shift_char(char,shift) }.join   
end

def codeSet(code)
    code < 97 ? 65 : 97
    
end

def shift_char(char, shift)
    code = char.ord

    if ((code >= 65 && code <= 90) || (code >= 97 && code <= 122)) 
        return ((code + shift - codeSet(code)) % 26 + codeSet(code)).chr
    end
    return char;
end

  
  message = "Hello, World!"
  
  message = caesar_cipher(message, -29)
  
  puts message
  puts "Ebiil, Tloia!"

  message = caesar_cipher(message, -75)
  
  puts message



