def sign_in
  visit "/info"
  name = "Venom"
  date = 4
  month = 1
  fill_in("name", with:(name))
  fill_in("date", with:(date))
  fill_in("month", with:(month))
  click_button ('Enter')
end
