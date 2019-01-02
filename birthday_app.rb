require 'sinatra'
require 'date'
# require './lib/birthday_greeter'

class Birth < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  get '/info' do
    erb(:user_info)
  end

  post '/nameform' do
    session[:name] = params[:name]
    session[:date] = params[:date]
    session[:month] = params[:month]
    redirect('/nobirthday')
  end

  get '/birthday' do
    @name = session[:name]
    erb(:birthday)
  end

  get '/nobirthday' do
    @name = session[:name]
    @date = session[:date]
    @month = session[:month]
    @todays_date = Date.today
    @user_birthday = Date.new(Date.today.year,@month.to_i,@date.to_i)
    start_date = Date.parse @user_birthday.to_s
    end_date =  Date.parse @todays_date.to_s
    y = start_date - end_date
    if y == 0
      redirect('/birthday')
    else
    @days_left = y.to_i
    end
    erb(:not_birthday)
  end


end
