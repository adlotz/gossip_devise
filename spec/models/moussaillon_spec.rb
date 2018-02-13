require 'rails_helper'

RSpec.describe Moussaillon, type: :model do
  
  	it "vérifier l'inscription" do
  		m = Moussaillon.create(username: "tester2", email: "test2@test.com", password: "tester", password_confirmation: "tester", sign_up_code: "gossip2018")
  		expect(m.valid?).to eq(true)
  	end

  	it "vérifier qu'une adresse email valide est obligatoire" do
  		m = Moussaillon.create(username: "tester", email: "test.test", password: "tester", password_confirmation: "tester", sign_up_code: "gossip2018")
  		expect(m.valid?).to eq(false)
  	end

  	it "vérifier que le code sign up est obligatoire" do
  		 m = Moussaillon.create(username: "tester2", email: "test2@test.com", password: "tester", password_confirmation: "tester", sign_up_code: "gossi")
  		expect(m.valid?).to eq(false) 		
  	end
  	
  	it "vérifier que le mot de passe est obligatoire" do
  		m = Moussaillon.create(username: "tester", email: "test2@test.com", password: "", password_confirmation: "", sign_up_code: "gossip2018")
  		expect(m.valid?).to eq(false)
  	end

  	it "vérifier que le mot de passe doit contenir minium 6 caractères" do
  		m = Moussaillon.create(username: "tester2", email: "test2@test.com", password: "teste", password_confirmation: "teste", sign_up_code: "gossip2018")
  		expect(m.valid?).to eq(false)
  	end

end
