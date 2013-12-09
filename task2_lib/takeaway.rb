class Takeaway

	DISHES = [{:pizza => 5,
			:beer => 3}]


	def dishes
		DISHES
	end

	def order (dishes, quantity)

	end


	def place_order (dishes_and_quantaties, order_total)
		actual_price = check_price_of(dishes_and_quantaties)
	end



	def check_price_of(dishes_and_quantaties)
		dishes_and_quantaties.inject(0) do |price, (dish, quantity)| 
		price += dish * quantity
		end
	end
	

end