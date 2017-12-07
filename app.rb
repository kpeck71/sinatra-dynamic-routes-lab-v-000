require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    @square = number*number
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase} " * @number
  end

  get 'say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = word1
    @word2 = word2
    @word3 = word3
    @word4 = word4
    @word5 = word5
    "#{word1} #{word2} #{word3} #{word4} #{word5} "
  end

end
