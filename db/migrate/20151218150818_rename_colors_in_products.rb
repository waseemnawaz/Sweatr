class RenameColorsInProducts < ActiveRecord::Migration
  def 
  	rename_column :products, :color, :colour
  end
end
