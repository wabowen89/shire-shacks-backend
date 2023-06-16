require 'rails_helper'

RSpec.describe "Shacks", type: :request do
  let(:user) { User.create(
    email: 'test@example.com',
    password: 'password',
    password_confirmation: 'password'
    )
  }

  describe "GET /index" do
    it 'gets a list of shacks' do
      shack = user.shacks.create(
        street: "Shirewood Lane",
        unit: "3",
        hill: "Cobblestone Hill",
        square_footage: 1467,
        price: "800 Castars",
        bedrooms: 4,
        bathrooms: 3.5,
        pets: "3",
        image: "https://www.nztravelorganiser.com/wp-content/uploads/2019/09/hobbiton-1024x683.jpg",
        user_id: user.id
      )
      get '/shacks'

      shack = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(shack.first['street']).to eq('Shirewood Lane')
    end
  end

  describe "POST /create" do
    it "creates a shack" do
      shack_params = {
        shack: {
          street: "Shirewood Lane",
          unit: "3",
          hill: "Cobblestone Hill",
          square_footage: 1467,
          price: "800 Castars",
          bedrooms: 4,
          bathrooms: 3.5,
          pets: "3",
          image: "https://www.nztravelorganiser.com/wp-content/uploads/2019/09/hobbiton-1024x683.jpg",
          user_id: user.id
        }
      }
      post '/shacks', params: shack_params
      expect(response).to have_http_status(200)

      shack = Shack.first

      expect(shack.street).to eq 'Shirewood Lane'
    end
  end
end