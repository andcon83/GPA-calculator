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
    answer_array.each_with_index do |value,index|
      if value=="yes"&&answer_array[index-1]!=""
        new_array.push(1)
      elsif value=="no"&&answer_array[index-1]!=""
        new_array.push(0)
      elsif value.is_a?(String)&&value.length>0||value.is_a?(Integer)
        new_array.push(value.to_f)
      end
    end
    answer=[]
    new_array.each_with_index do |value,index|
      if value>1.1
        answer.push([value, new_array[index+1], new_array[index+2]])
      end
    # puts answer_array
    end
    @unweightedresult=f_gpa(answer)
    @kacunweighted=k_gpa(answer)
    @weightedresult=w_gpa(answer)
    erb :results
  end

end