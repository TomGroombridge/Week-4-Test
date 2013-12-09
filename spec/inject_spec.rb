require_relative "../lib/inject.rb"

describe "inject" do

	it "will be 15 when applied to [1,2,3,4,5]" do
		#result = [1,2,3,4,5].inject {|memo, n| memo + n}
		expect([1,2,3,4,5].inject_2 {|memo, value| memo + value}).to eq 15
	end

	it "will be 120 when applied to [1,2,3,4,5]" do
		expect([1,2,3,4,5].inject_2 {|memo, value| memo * value}).to eq 120
	end

	it "will return British when applied to [Evgeny, is, British]" do
		expect(['Evgeny', 'is', 'British'].inject_2 {|memo, word| memo.length > word.length ? memo : word}).to eq "British"
end 
end