class CopyProductPriceIntoLineItem < ActiveRecord::Migration
  def up
    add_column :line_items, :price, :decimal
    
    LineItem.all.each do |lineitem|
      lineitem.update_attribute :price, lineitem.product.price
    end
    
    def down
      remove_column :line_items, :price
    end
  end
end
