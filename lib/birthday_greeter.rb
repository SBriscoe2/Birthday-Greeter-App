require 'date'

class User
  def initialize
    @date = date
  end

  def today_date
    date = Date.today
    # date = date.day.to_s + "/" + date.month.to_s + "/" + date.year.to_s
    date.to_i
  end

  def birthday_check
    if date == Date.today
    "It is your birthday"
    end
  end
end
