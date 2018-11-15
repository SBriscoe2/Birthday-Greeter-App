def sign_in
  visit "/"
  name = "Venom"
  date = 4
  month = 1
  year = 2000
  fill_in("name", with:(name))
  fill_in("date", with:(date))
  fill_in("month", with:(month))
  fill_in("year", with:(year))
  click_button ('Submit')
end
