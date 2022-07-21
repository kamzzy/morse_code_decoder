@dictionary = {
  " " => " ",
  ".-" => "A",
  "-..." => "B",
  "-.-." => "C",
  "-.." => "D",
  "." => "E",
  "..-." => "F",
  "--." => "G",
  "...." => "H",
  ".." => "I",
  ".---" => "J",
  "-.-" => "K",
  ".-.." => "L",
  "--" => "M",
  "-." => "N",
  "---" => "O",
  ".--." => "P",
  "--.-" => "Q",
  ".-." => "R",
  "..." => "S",
  "-" => "T",
  "..-" => "U",
  "...-" => "V",
  ".--" => "W",
  "-..-" => "X",
  "-.--" => "Y",
  "--.." => "Z"
}

def decode_alphapet(alphapet)
  @current_alphapet = @dictionary[alphapet]
  @current_alphapet
end

def decode_word(word)
  @alphapets = word.split
  @current_word = ''
  @alphapets.each do |alphapet|
    decode_alphapet(alphapet)
    @current_word += decode_alphapet(alphapet)
  end
  print "#{@current_word} "
end

def decode_message(message)
  @sentence = message.split('  ')
  @sentence.each do |word|
    decode_word(word)
  end
end

decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')