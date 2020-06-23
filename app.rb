require_relative 'config/environment'

class App < Sinatra::Base
  get('/reversename/:name') do
    params[:name].reverse
  end

  get('/square/:number') do
    square_number = params[:number].to_i * params[:number].to_i
    square_number.to_s
  end

  get('/say/:number/:phrase') do
    params[:phrase] * params[:number].to_i

  end

  get('/say/:word1/:word2/:word3/:word4/:word5') do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get('/:operation/:number1/:number2') do
    if params[:operation] == 'add'
      resulting_number = params[:number1].to_i + params[:number2].to_i
      resulting_number.to_s
    elsif params[:operation] == 'subtract'
      resulting_number = params[:number1].to_i - params[:number2].to_i
      resulting_number.to_s
    elsif params[:operation] == 'multiply'
      resulting_number = params[:number1].to_i * params[:number2].to_i
      resulting_number.to_s
    elsif params[:operation] == 'divide'
      resulting_number = params[:number1].to_i / params[:number2].to_i
      resulting_number.to_s
    end
  end

end