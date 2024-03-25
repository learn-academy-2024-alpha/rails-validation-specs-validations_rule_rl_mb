require 'rails_helper'

RSpec.describe Address, type: :model do
  # Address.create(street_number:'12312', street_name:'hhshdsd', city: 'riverside', state: 'ca', zipcode: '92922', account_id: 1)

  it 'is not valid without street number' do 
    a = Address.create(street_name:'hhshdsd', city: 'riverside', state: 'ca', zipcode: '92922', account_id: 1)
    expect(a.errors[:street_number].first).to_not be_empty
  end
  it 'is not valid without street name' do 
    a = Address.create(street_number:'12312', city: 'riverside', state: 'ca', zipcode: '92922', account_id: 1)
    expect(a.errors[:street_name].first).to_not be_empty
  end
  it 'is not valid without state name' do 
    a = Address.create(street_number:'12312', street_name:'hhshdsd', city: 'riverside', zipcode: '92922', account_id: 1)
    expect(a.errors[:state].first).to_not be_empty
  end
  it 'is not valid without city name' do 
    a = Address.create(street_number:'12312', street_name:'hhshdsd', state: 'ca', zipcode: '92922', account_id: 1)
    expect(a.errors[:city].first).to_not be_empty
  end
  it 'is not valid without zipcode' do 
    a = Address.create(street_number:'12312', street_name:'hhshdsd', city: 'riverside', state: 'ca', account_id: 1)
    expect(a.errors[:zipcode].first).to_not be_empty
  end
end
