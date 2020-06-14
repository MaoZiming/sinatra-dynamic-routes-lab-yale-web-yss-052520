require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i ** 2
    @num.to_s
  end

  get '/say/:number/:phrase' do
    @string = params[:phrase] * params[:number].to_i
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @num = params[:number1].to_i + params[:number2].to_i
    end
    if params[:operation] == "subtract"
      @num = params[:number1].to_i - params[:number2].to_i
    end    

    if params[:operation] == "multiply"
      @num = params[:number1].to_i * params[:number2].to_i
    end

    if params[:operation] == "divide"
      @num = params[:number1].to_i / params[:number2].to_i
    end
    @num.to_s
  end
end