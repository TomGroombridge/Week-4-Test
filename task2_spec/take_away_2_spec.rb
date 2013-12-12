require_relative "../lib/take_away_2.rb"

# You didn't really have to create four separate directories
# lib and spec would be just fine

describe Takeaway do 

		let (:takeaway) {Takeaway.new}

	context 'should have a menu' do 

		it "should have a list of dishes" do

			dishes = {
				:pizza => 4,
				:burger => 5,
				:fish => 4,
				:chips => 2
					}
			expect(takeaway.dishes).to eq dishes
	end		

	it "should be able to check the price of orders" do
		expect(takeaway.check_price_of({:pizza => 2})).to eq 8
		end		

end

	context 'should be able to recieve incorrect orders and' do

		# Good test. You could have a complementary test to check that the
		# error is not raised if the total is correct
		it "raise and error if total is wrong" do
			expect{(takeaway.place_order({:pizza => 2, :burger => 1}, 12))}.to raise_error(ArgumentError, 'Total is wrong. Please place the order again')		
		end


	end
	
	context "should be able to send texts" do

		let (:twilio_client) {:TwilioRESTClient}

		it ""



end