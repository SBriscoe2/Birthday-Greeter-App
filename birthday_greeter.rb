require 'sinatra'

set :session_secret, 'super secret'
# erb(:index) formatting doc
get '/birthday' do
  'Hello there!'
  erb(:index)
end
