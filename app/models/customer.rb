class Customer < ApplicationRecord
    has_many :bookings
  	def self.from_omniauth(auth)
		where(provider: auth.provider, custid: auth.custid).first_or_create do |customer|
		    customer.provider = auth.provider 
		    customer.custid   = auth.custid
		    customer.name     = auth.info.name
		    customer.email    = auth.info.email
		    customer.save
		end
	end
	
end
