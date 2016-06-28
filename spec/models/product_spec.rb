require 'rails_helper'

describe Product do
  context "when the product has comments" do
  	before do
  	  @product = Product.create!(name: "electric guitar")
  	  @user = User.create!(email: "example@email.com", password: "123456")
  	  @product.comments.create!(rating: 1, user: @user, body: "terrible guitar!")
  	  @product.comments.create!(rating: 5, user: @user, body: "awesome guitar!")
  	  @product.comments.create!(rating: 3, user: @user, body: "okay guitar!")
	end

	it "returns the average rating of all comments" do
		expect(@product.comments.average(:rating)).to eq 3
	end

	it "if not valid" do
		expect(Product.new(description: "Nice guitar")).not_to be_valid
	end

  end

  
end