class Moussaillon < ApplicationRecord
  attr_accessor :sign_up_code
  validates :sign_up_code,
    on: :create,
    presence: true,
	inclusion: { in: ["gossip2018"] }


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	has_many :created_gossips, class_name: "Gossip", foreign_key: "creator_id"
	validates :username, presence: true


end
