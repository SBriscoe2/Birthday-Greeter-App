describe 'Check inputted name', type: :feature do
  it 'Shows the name that has been inputted by the user' do
    sign_in
    expect(page).to have_content "Venom"
  end
end
