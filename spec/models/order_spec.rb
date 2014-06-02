require 'spec_helper'

describe Order, :type => :model do
  describe 'associations' do

    before :each do
      @order = create(:order)
    end

    it 'should have many order items' do
      expect(@order).to have_many(:order_items)
    end

  end
end
