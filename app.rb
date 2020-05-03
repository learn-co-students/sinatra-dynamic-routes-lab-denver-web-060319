require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @user = params[:name]
    "#{@user.reverse}"
  end
  get '/square/:number' do
    @the_number = params[:number]
    "#{@the_number.to_i**2}"
  end
  get '/say/:number/:phrase' do
    @the_number = params[:number]
    @the_phrase = params[:phrase]
    array = Array.new(@the_number.to_i){@the_phrase}
    array.each{|the_phrase| the_phrase}
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
    @number1 = params[:number1]
    @number2 = params[:number2]
    @operation = params[:operation]
    if @operation == "add"
    "#{@number1.to_i + @number2.to_i}"
    elsif @operation == "subtract"
      "#{@number1.to_i - @number2.to_i}"
    elsif @operation == "multiply"
      "#{@number1.to_i * @number2.to_i}"
    elsif @operation == "divide"
      "#{@number1.to_i / @number2.to_i}"
    end
  end
end