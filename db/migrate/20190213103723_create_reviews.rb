class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating
      t.string :references

      t.timestamps
    end
  end
end
