class Sweet < ActiveRecord::Base
	attr_accessible :author, :article_id
	belongs_to :article
end
