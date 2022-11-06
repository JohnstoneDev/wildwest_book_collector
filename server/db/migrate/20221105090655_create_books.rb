class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t| 
      t.string  :title 
      t.string  :author
      t.string  :publisher
      t.string  :subtitle
      t.string  :published_date
      t.string  :category
      t.string  :description
      t.string  :maturity_rating
      t.string  :image_link_one
      t.string  :image_link_two
      t.integer :page_count
    end 
  end
end
