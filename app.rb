require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"

  end

  get "/square/:number" do
    @squared = params[:number].to_i ** 2
    "#{@squared.to_s}"
  end

  get "/say/:number/:phrase" do
    saying = []
    params[:number].to_i.times do
     saying << params[:phrase] + " "
    end
    saying 
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @words = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    "#{@words}"
  end

  get "/:operation/:number1/:number2" do

    @operation = params[:operation]
    case @operation
    when "add"
      @sum = params[:number1].to_i + params[:number2].to_i
      "#{@sum}"
    when "subtract"
      @difference = params[:number1].to_i - params[:number2].to_i
      "#{@difference}"
    when "multiply"
      @product = params[:number1].to_i * params[:number2].to_i
      "#{@product}"
    when "divide"
      @dividen = params[:number1].to_i / params[:number2].to_i
      "#{@dividen}"

    end

  end
  



end