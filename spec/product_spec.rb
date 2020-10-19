require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it "is valid with when all required attributes provided" do
      product = Product.new
      product.category = Category.new
      product.name = "Name"
      product.price = 10
      product.quantity = 1
      expect(product.save).to be true
    end

    it "is not valid if name is missing" do
      product = Product.new
      product.category = Category.new
      product.price = 10
      product.quantity = 1
      expect(product.save).to be false
    end

    it "is not valid if price is missing" do
      product = Product.new
      product.category = Category.new
      product.name = "Name"
      product.quantity = 1
      expect(product.save).to be false
    end

    it "is not valid if quantity is missing" do
      product = Product.new
      product.category = Category.new
      product.name = "Name"
      product.price = 10
      expect(product.save).to be false
    end

    it "is not valid if category is missing" do
      product = Product.new
      product.name = "Name"
      product.price = 10
      product.quantity = 1
      expect(product.save).to be false
    end

    

  end
end

# validates :name, presence: true
#   validates :price, presence: true
#   validates :quantity, presence: true
#   validates :category, presence: true