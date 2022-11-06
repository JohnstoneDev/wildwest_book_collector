class RemoveAuthorColumn < ActiveRecord::Migration[6.1]
  def change
    change_table :books do |t|
      t.remove :author 
    end 
  end
end
