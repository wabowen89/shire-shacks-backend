require 'rails_helper'

RSpec.describe Shack, type: :model do  
  let(:user) { User.create(
    email: 'test@example.com',
    password: 'password',
    password_confirmation: 'password'
    )
  }

  it 'should validate street' do
    shack = user.shacks.create(
      street: nil,
      unit: "3",
      hill: "Cobblestone Hill",
      square_footage: 1467,
      price: "800 Castars",
      bedrooms: 4,
      bathrooms: 3.5,
      pets: "3",
      image: "https://www.nztravelorganiser.com/wp-content/uploads/2019/09/hobbiton-1024x683.jpg"
    )
    expect(shack.errors[:street]).to include("can't be blank")
  end

  it 'should validate unit' do
    shack = user.shacks.create(
      street: "nil",
      unit: nil,
      hill: "Cobblestone Hill",
      square_footage: 1467,
      price: "800 Castars",
      bedrooms: 4,
      bathrooms: 3.5,
      pets: "3",
      image: "https://www.nztravelorganiser.com/wp-content/uploads/2019/09/hobbiton-1024x683.jpg"
    )
    expect(shack.errors[:unit]).to include("can't be blank")
  end

  it 'should validate hill' do
    shack = user.shacks.create(
      street: "nil",
      unit: "3",
      hill: nil,
      square_footage: 1467,
      price: "800 Castars",
      bedrooms: 4,
      bathrooms: 3.5,
      pets: "3",
      image: "https://www.nztravelorganiser.com/wp-content/uploads/2019/09/hobbiton-1024x683.jpg"
    )
    expect(shack.errors[:hill]).to include("can't be blank")
  end

  it 'should validate square ft' do
    shack = user.shacks.create(
      street: "nil",
      unit: "3",
      hill: "Cobblestone Hill",
      square_footage: nil,
      price: "800 Castars",
      bedrooms: 4,
      bathrooms: 3.5,
      pets: "3",
      image: "https://www.nztravelorganiser.com/wp-content/uploads/2019/09/hobbiton-1024x683.jpg"
    )
    expect(shack.errors[:square_footage]).to include("can't be blank")
  end

  it 'should validate price' do
    shack = user.shacks.create(
      street: "nil",
      unit: "3",
      hill: "Cobblestone Hill",
      square_footage: 1467,
      price: nil,
      bedrooms: 4,
      bathrooms: 3.5,
      pets: "3",
      image: "https://www.nztravelorganiser.com/wp-content/uploads/2019/09/hobbiton-1024x683.jpg"
    )
    expect(shack.errors[:price]).to include("can't be blank")
  end

  it 'should validate bed' do
    shack = user.shacks.create(
      street: "nil",
      unit: "3",
      hill: "Cobblestone Hill",
      square_footage: 1467,
      price: "800 Castars",
      bedrooms: nil,
      bathrooms: 3.5,
      pets: "3",
      image: "https://www.nztravelorganiser.com/wp-content/uploads/2019/09/hobbiton-1024x683.jpg"
    )
    expect(shack.errors[:bedrooms]).to include("can't be blank")
  end

  it 'should validate bath' do
    shack = user.shacks.create(
      street: "nil",
      unit: "3",
      hill: "Cobblestone Hill",
      square_footage: 1467,
      price: "800 Castars",
      bedrooms: 4,
      bathrooms: nil,
      pets: "3",
      image: "https://www.nztravelorganiser.com/wp-content/uploads/2019/09/hobbiton-1024x683.jpg"
    )
    expect(shack.errors[:bathrooms]).to include("can't be blank")
  end

  it 'should validate pets' do
    shack = user.shacks.create(
      street: "nil",
      unit: "3",
      hill: "Cobblestone Hill",
      square_footage: 1467,
      price: "800 Castars",
      bedrooms: 4,
      bathrooms: 3.5,
      pets: nil,
      image: "https://www.nztravelorganiser.com/wp-content/uploads/2019/09/hobbiton-1024x683.jpg"
    )
    expect(shack.errors[:pets]).to include("can't be blank")
  end

  it 'should validate image' do
    shack = user.shacks.create(
      street: "nil",
      unit: "3",
      hill: "Cobblestone Hill",
      square_footage: 1467,
      price: "800 Castars",
      bedrooms: 4,
      bathrooms: 3.5,
      pets: "3",
      image: nil
    )
    expect(shack.errors[:image]).to include("can't be blank")
  end

end
