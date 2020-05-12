class PigLatinizer
  
  def to_pig_latin(phrase)
    phrase.split.collect { |word| piglatinize(word)}.join(" ")
  end

  def piglatinize(word)
    splitup_word = word.split(/([^aeiouAEIOU]*)([aeiouAEIOU]*)(.*)/)
    front_w = splitup_word[1]
    rest_of_w = splitup_word[2] + (splitup_word[3] || "")
    if front_w.length>0
      "#{rest_of_w}#{front_w}ay"
    else
      "#{rest_of_w}way"
    end
  end
end