class Article < ActiveRecord::Base
	has_many :comments
	validates :text, presence: true, length: {maximum: 140}

end
