class Comment < ActiveRecord::Migration[5.2]
  def self.up
    change_column :comments, :status, :text
  end

  def self.down
    change_column :comments, :status, :boolean
  end
end
