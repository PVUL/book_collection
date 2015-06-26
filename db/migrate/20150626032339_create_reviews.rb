class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :rating
      t.string :body
      t.belongs_to :book

      t.timestamps null:false
    end
  end
end
