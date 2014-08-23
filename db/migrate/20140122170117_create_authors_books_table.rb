class CreateAuthorsBooksTable < ActiveRecord::Migration
  def up
    create_table :authors_books, :id => false do |t|
      t.references :author
      t.references :book
    end
    add_index :authors_books, [:author_id, :book_id]
    add_index :authors_books, :author_id
  end

  def down
    drop_table :authors_books
  end
end
