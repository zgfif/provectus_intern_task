require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context 'create new user' do
  	it 'successfully invoke method new with email and password and password_confirmation' do
  		user = User.new(email: 'example@mail.com', password: '2223secret_pass', password_confirmation: '2223secret_pass')
  		expect(user).to be_valid
  	end

  	it 'failure invoke method new with email, password and wrong password_confirmation' do
  		user = User.new(email: 'example@mail.com', password: '2223secret_pass', password_confirmation: '2223')
  		expect(user).to_not be_valid
  	end
  	it 'failure invoke method new without email but with password and password_confirmation' do
  		user = User.new(email: '', password: '2223secret_pass', password_confirmation: '2223secret_pass')
  		expect(user).to_not be_valid
  	end  
  end
end
