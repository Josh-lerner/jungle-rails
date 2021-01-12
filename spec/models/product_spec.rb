require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    it 'should save a valid product' do
      @category = Category.create(name:"food")
      product = Product.new(
        name: "Burgers",
        price: 5.00,
        quantity: 12,
        category_id: @category.id
      )
      expect(product).to be_valid
    end

    it 'should not save without valid name' do
      @category = Category.create(name: "food")
      product = Product.new(
        name: nil,
        price: 5.00,
        quantity: 12,
        category_id: @category.id
      )
      expect(product).to_not be_valid
    end

    it 'should not save without valid price' do
      @category = Category.create(name: "food")
      product = Product.new(
        name: "Burgers",
        price_cents: nil,
        quantity: 12,
        category_id: @category.id
      )
      expect(product).to_not be_valid
    end

    it 'should not save without valid quantity' do
      @category = Category.create(name: "food")
      product = Product.new(
        name: "Burgers",
        price: 5.00,
        quantity: nil,
        category_id: @category.id
      )
      expect(product).to_not be_valid
    end

    it 'should not save without valid category id' do
      @category = Category.create(name: "food")
      product = Product.new(
        name: "Burgers",
        price: 5.00,
        quantity: 12,
        category_id: nil
      )
      expect(product).to_not be_valid
    end
  end
end