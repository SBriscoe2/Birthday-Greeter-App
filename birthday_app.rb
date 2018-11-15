require 'sinatra'
require './lib/birthday_greeter'

class Birth < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)

  end

  post '/nameform' do
    session[:name] = params[:name]
    session[:date] = params[:date]
    session[:month] = params[:month]
    session[:year] = params[:month]
    redirect('/birthday')
  end

  get '/birthday' do
    @name = session[:name]
    @date = session[:date]
    @month = session[:month]
    @year = session[:year]
    @today_date = User.new.today_date
    @message = User.new.check_birthday
    erb(:birthday)
  end
end
# (Date.new(Date.today.year,@month.to_i,@date.to_i
