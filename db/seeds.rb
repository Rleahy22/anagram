

File.readlines(APP_ROOT.join('words')).each do |next_word|
  Word.create(:word => next_word.chomp) 
end
