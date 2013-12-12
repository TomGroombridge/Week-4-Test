require 'rubygems'
require 'twilio-ruby'

# Why is this file in two places? :) I'll ignore this one
class Takeaway

	def dishes
	 	{:pizza => 4,
		 :burger => 5,
		 :fish => 4,
		 :chips => 2}
    end

    def raise_order_total_error
    	raise ArgumentError, 'Total is wrong. Please place the order again'
    end

    def place_order (dishes_and_quantities, order_total)
    	actual_price = check_price_of(dishes_and_quantities)
    	raise_order_total_error if actual_price != order_total
    	#send error confirmation
    end

    def check_price_of(dishes_and_quantities)
    	dishes_and_quantities.inject(0) do |price, (dish,quantity)|
    		price += dishes[dish] * quantity
    	end
    end

    def twilio_account
    	account_sid = 'AC4020c7172ab5705951dac48558ec411e'
		auth_token = 'b8f8664b48f5e656f4be32b023159ecb'
		@client = Twilio::REST::Client.new account_sid, auth_token
	end

end






 

account_sid = 'AC4020c7172ab5705951dac48558ec411e'
auth_token = 'b8f8664b48f5e656f4be32b023159ecb'
@client = Twilio::REST::Client.new account_sid, auth_token
 
message = @client.account.sms.messages.create(:body => "Jenny please?! I love you <3",
    :to => "+447540726507",     
    :from => "+441634621012")   
puts message.sid