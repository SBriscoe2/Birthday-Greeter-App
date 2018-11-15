require 'date'

class User

  def today_date
    date = Time.new
    date = date.day.to_s + "/" + date.month.to_s + "/" + date.year.to_s
    date.to_i
  end

  def check_birthday
    'It is not your Birthday yet!'
  end
end
