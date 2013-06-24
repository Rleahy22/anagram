get '/' do                # ~> NoMethodError: undefined method `get' for main:Object
  # Look in app/views/index.erb
  
  erb :index
end



get '/:word' do
  target = params[:word].split('').sort.join
  @matches = []
  
  Word.all.each do |current_word|
    mate = current_word.word.split('').sort.join
    if (target == mate)
      @matches << current_word.word
    end
  end

  erb :index
end
