class CreateAuthorBookPivots < ActiveRecord::Migration[5.2]
  def change
    create_table :author_book_pivots do |t|

      t.string :author_id
      t.string :book_id

      t.timestamps
    end
  end
end
