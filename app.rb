require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    "#{params[:phrase]}"* params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number_1 = params[:number1].to_i
    number_2 = params[:number2].to_i

    case params[:operation]
    when "add"
      "#{number_1 + number_2}"
    when "subtract"
      "#{number_1 - number_2}"
    when "multiply"
      "#{number_1 * number_2}"
    when "divide"
      "#{number_1 / number_2}"
    else
      "Error"
    end
  end
end