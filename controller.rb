require('sinatra')
require('sinatra/contrib/all') if development?

require_relative('./models/wordformatter')

require('json')

get '/' do
  @info = {
    name: 'Paul',
    birthplace: 'Glasgow',
    study: 'programming',
    hobby: 'driving'
  }
  erb(:info)
end

get '/address' do
  content_type(:json)
  wordformatter = Wordformatter.new()
  address = {
    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE',
    # postcode: 'e13 zqf',
    postcode: wordformatter.to_upcase('e13 zqf'),
    phone: '0131558030'
  }
  return address.to_json()

end


get '/camelcase/:text' do
  wordformatter = Wordformatter.new()
  @wordformatter = wordformatter.to_camelcase(params[:text])
  erb(:camelcase)
  
end







