class AddCategoryIdToWorks < ActiveRecord::Migration
  def self.up
    add_column :works, :category_id, :integer
  end

  def self.down
    remove_column :works, :category_id
  end
end
