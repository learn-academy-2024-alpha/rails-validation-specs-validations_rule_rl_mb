require 'rails_helper'

# account1 = Account.create(username: jeff, password: 'learn', email: 'jefflearn@example.com')

RSpec.describe Account, type: :model do
  it 'is not valid without username' do 
    account1 = Account.create(password: 'learn', email: 'jefflearn@example.com') 
    expect(account1.errors[:username].first).to_not be_empty
    
  end
  it 'is not valid without password' do 
    account1 = Account.create(username:'jeff', email: 'jefflearn@example.com') 
    expect(account1.errors[:password].first).to_not be_empty
  end

  it 'is not valid without email' do 
    account1 = Account.create(username:'jeff', password: 'learn') 
    expect(account1.errors[:email].first).to_not be_empty
  end
  
  it 'is not valid if username is shorter than 5 characters' do
    account1 = Account.create(username: 'jeff', password: 'learn', email: 'jefflearn@example.com')
      expect(account1.errors[:username].first).to_not be_empty
  end

  it'is not valid if the username is already taken' do
    Account.create(username: 'jeffrey', password: 'learnnn', email: 'jefflearn@example.com')
    account_fails = Account.create(username: 'jeffrey', password: 'learnnn', email: 'jefflearn@example.com')
      expect(account_fails.errors[:username].first).to eq("has already been taken")
  end
   
  it 'is not valid if password is shorter than 6 characters' do
    account1 = Account.create(username: 'jeff', password: 'learn', email: 'jefflearn@example.com')
      expect(account1.errors[:password].first).to_not be_empty
  end

  it 'is not valid if the password is already taken' do
    Account.create(username: 'jeffrey', password: 'learnnn', 
    email: 'jefflearn@example.com')
    password_fails =  Account.create(username: 'jeffrey', password: 'learnnn', 
    email: 'jefflearn@example.com')
    expect(password_fails.errors[:password].first).to eq("has already been taken")
  end

  # it 'is not valid if password does not include number' do
  #   a = Account.create(username: 'jeffrey', password: 'learnnn', 
  #   email: 'jefflearn@example.com')
  #   expect(a.errors[:password].first).to eq("Password must include atleast 1 number")
  # end

  it ''
end

