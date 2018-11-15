require 'birthday_greeter'

describe User do

  it 'checks that a message can be seen by the user' do
    subject = User.new
    expect(subject.check_birthday).to eq 'It is not your Birthday yet!'
  end
end
