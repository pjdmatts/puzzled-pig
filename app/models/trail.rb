class Trail < ActiveRecord::Base
	has_many :points, dependent: :destroy
	validates :name, presence: true
end
