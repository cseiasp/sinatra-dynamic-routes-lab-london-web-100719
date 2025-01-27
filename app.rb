require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name]
    backwards = @name.reverse
    "#{backwards}"
  end
  
  get '/square/:number' do
    @number = params[:number].to_i
    square = (@number*@number).to_s
    "#{square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    answer = ""

    @number.times do 
    answer += @phrase
    end

    answer
  end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @operation == "add"
      (@num1+@num2).to_s
    elsif @operation == "multiply"
      (@num1*@num2).to_s
    elsif @operation == "subtract"
      (@num1-@num2).to_s
    elsif @operation == "divide"
      (@num1/@num2).to_s
    end

  end


end