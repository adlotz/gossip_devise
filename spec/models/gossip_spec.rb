require 'rails_helper'

m = Moussaillon.create(username: "tester1", email: "test1@test.com", password: "tester", password_confirmation: "tester", sign_up_code: "gossip2018")
n = Moussaillon.last
RSpec.describe Gossip, type: :model do
  
  	it "verifier qu'un gossip est bien créé" do

 		gossip = n.created_gossips.create(content: "les secrets, c'est secret")
  		expect(gossip.valid?).to eq(true)
	end

	it "vérifier qu'un gossip à besoin d'un créateur" do

		gossip = Gossip.create(content: "la phrase de mon gossip")
		expect(gossip.valid?).to eq(false)
	end

	it "vérifier qu'un gossip ne peux être vide" do

		gossip = n.created_gossips.create(content: "")
		expect(gossip.valid?). to eq(false)
	end


end
