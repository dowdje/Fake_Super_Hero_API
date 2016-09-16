require 'rails_helper'

describe "Heros API" do 
  describe 'get /heros' do 
    it 'returns a JSON collection of all the heros' do
    Hero.create(name: "Loganite", sex: "?", height: "6'0", age: 12, hometown: "Madison, WI")
    Hero.create(name: "Sylvanas Windrunner", sex: "Ladylike", height:"7'0", age: 63, hometown: "Oxford, Oxfordshire")

    get '/api/v1/heros'

    response_body = JSON.parse(response.body)
    expect(response).to be_success
    expect(response_body.length).to eq(2)

    end
  end
end