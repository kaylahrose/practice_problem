require './lib/practice.rb'
require 'json'

RSpec.describe 'practice problem' do
  xit '#calculate_total' do
    products = {
      "products": [
        {
          "name": "Product 1",
          "price": 10.99,
          "quantity": 2
        },
        {
          "name": "Product 2",
          "price": 5.49,
          "quantity": 3
        },
        {
          "name": "Product 3",
          "price": 7.25,
          "quantity": 1
        }
      ]
    }.to_json

    expect(calculate_total(products)).to eq(45.7)
    expect(calculate_total(products)).to be_a(BigDecimal)
  end

  xit 'handles incomplete lists' do
    products = {
      "products": [
        {
          "name": "Product 1",
          "price": 10.99,
          "quantity": nil
        },
        {
          "name": "Product 2",
          "price": nil,
          "quantity": 3
        },
        {
          "name": "Product 3",
          "price": 7.25,
          "quantity": 1
        }
      ]
    }.to_json


    expect(calculate_total(products)).to eq(7.25)
  end

  it 'reverses a string' do
    string = "Madam, I'm Adam"
    reversed = string.reverse

    expect(reverse_string(string)).to eq(reversed)
  end
end