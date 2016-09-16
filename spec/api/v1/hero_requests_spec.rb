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


  describe 'get /heros/1' do
    context 'it exists' do
      it 'returns a JSON collection of one hero' do
          hero = Hero.create(name: "Loganite", sex: "?", height: "6'0", age: 12, hometown: "Madison, WI")

          get '/api/v1/heros/1'

          response_body = JSON.parse(response.body)
          expect(response).to be_success
          expect(response_body["name"]).to eq("Loganite")
        end
      end

    # context 'it does not exist' do
    #   it 'returns an error with status 500' do
    #
    #     get '/api/v1/heros/1'
    #
    #     response_body = JSON.parse(response.body)
    #     expect(response).to eq(500)
    #     expect(response_body["name"]).to eq("Loganite")
    #   end
    # end
  end

  describe 'post /heros/' do
    context 'it exists' do
      it 'creates a new hero' do
        post '/api/v1/heros/', {hero: {name: "Loganite", sex: "?", height: "6'0", age: 12, hometown: "Madison, WI"}}

        hero = Hero.first

        response_body = JSON.parse(response.body)
        expect(response).to be_success
        expect(response_body["name"]).to eq("Loganite")



      end
    end
  end

end
