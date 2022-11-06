class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :book_id
      t.string  :my_notes
      t.string  :book_title
      t.string  :book_description
      t.string  :book_author
      t.string  :book_image_link_one
      t.string  :book_image_link_two
      t.timestamps 
    end 
  end
end
