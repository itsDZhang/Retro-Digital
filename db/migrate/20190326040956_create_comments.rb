class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.boolean :status
      t.string :content
      t.string :date_created
      t.integer :votes

      t.timestamps
    end
  end
end
