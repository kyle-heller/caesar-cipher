ALPHABETS = %w{abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ 0123456789}

def caesar(string, rotate)
  ALPHABETS.each do
    |alphabet|
    rotated_alphabet = alphabet[rotate % alphabet.length..] +
    alphabet[...rotate % alphabet.length]
    string.tr!(alphabet, rotated_alphabet)
  end
  puts string
ends