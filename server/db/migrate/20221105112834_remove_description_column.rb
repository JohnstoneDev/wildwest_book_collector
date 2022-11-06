class RemoveDescriptionColumn < ActiveRecord::Migration[6.1]
  def change
    change_table :reviews do |t| 
      t.remove :book_description
    end 

    add_column :reviews, :author_id, :integer
  end
end
