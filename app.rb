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
    while x >= @number
      "#{@phrase}"
      x+=1
    end
  end

end
