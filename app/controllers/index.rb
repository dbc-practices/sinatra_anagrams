get '/' do
  @word = params[:word]
  erb :index
end

get '/word' do
  arr = Word.anagrams(params["user_input"])
  string = "A list of anagrams for #{params["user_input"]}\n\n"
  arr.each do |word|
    string << "#{word}\n\n"
  end
  # redirect to("/?word=#{string}")
end



# get '/' do
#   @grandma = params[:grandma]
#   erb :index
# end

# post "/grandma" do
#   input = params["user_input"]
#   if input == input.upcase
#     @grandma = "Oh, about 27 years ago."
#   else
#     @grandma = "SPEAK UP!"
#   end
#   redirect to("/?grandma=#{@grandma}"), 303
# end
