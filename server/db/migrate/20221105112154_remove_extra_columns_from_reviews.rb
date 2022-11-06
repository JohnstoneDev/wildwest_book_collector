class RemoveExtraColumnsFromReviews < ActiveRecord::Migration[6.1]
  def change
    change_table :reviews do |t| 
      t.remove :book_image_link_one
      t.remove :book_image_link_two
      t.remove :book_author
      t.remove :book_title
    end 
  end
end
