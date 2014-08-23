class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.decimal :dewey_normal
      t.string :title_long
      t.text :publisher_text
      t.string :marc_enc_level
      t.string :title_latin
      t.string :edition_info
      t.string :isbn13
      t.string :isbn10
      t.string :language
      t.string :dewey_decimal
      t.string :publisher_id
      t.string :subject_ids
      t.text :physical_description_text
      t.text :summary
      t.string :publisher_name
      t.string :title
      t.text :awards_text
      t.text :urls_text
      t.string :book_id
      t.string :lcc_number

      t.timestamps
    end
  end
end
