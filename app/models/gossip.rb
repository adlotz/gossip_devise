class Gossip < ApplicationRecord
	belongs_to :creator, class_name: "Moussaillon"

	validates :content, presence: true, length: { minimum: 2 }
end
