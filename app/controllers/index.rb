 require_relative '../models/word.rb'
 require_relative '../../config/environment.rb'

get '/:name' do
  # # Look in app/views/index.erb
  @new_array = Word.new(name: params[:name]).anagrams
  erb :index
end
