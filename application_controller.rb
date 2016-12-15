require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/about' do
    erb :about
  end
  
  post '/calculate' do
    answer_array=params.values
    new_array=[]
    answer_array.each do |value|
      if value.is_a?(String)&&value.length>0||value.is_a?(Integer)
        new_array.push(value.to_f)
      end
    end
    answer=[]
    new_array.each_with_index do |value,index|
      if value<1.1
        answer.push([new_array[index-1],value])
      end
    # puts answer_array
    end
    @unweightedresult=f_gpa(answer)
    @kacunweighted=k_gpa(answer)
    @weightedresult=@unweightedresult
    erb :results
  end

end