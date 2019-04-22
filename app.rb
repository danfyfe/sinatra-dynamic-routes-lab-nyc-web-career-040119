require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    #accepts a name and renders the name backwards
    @name = params[:name]
    reverse_name = @name.reverse
    "#{reverse_name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    squared = @number * @number
    "#{squared}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}" * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == "add"
      do_math = @number1 + @number2
    elsif @operation == "subtract"
      do_math = @number1 - @number2
    elsif @operation == "multiply"
      do_math = @number1 * @number2
    elsif @operation == "divide"
      do_math = @number1 / @number2
    end
    "#{do_math}"
   end

end