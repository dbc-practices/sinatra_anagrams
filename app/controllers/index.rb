get '/' do
  @word = params[:word]
  erb :index
end

post '/anagrams' do
  arr = Word.anagrams(params["user_input"])
  string = ""
  arr.each do |word|
    string << "#{word}\n\n"
  end
  @word = string
  erb :index
end
