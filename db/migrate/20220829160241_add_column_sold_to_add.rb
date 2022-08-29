class AddColumnSoldToAdd < ActiveRecord::Migration[7.0]
  def change
    add_column :ads, :sold, :boolean, default: false
  end
end
