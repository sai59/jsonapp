class Book < ActiveRecord::Base
  attr_accessible :awards_text, :book_id, :dewey_decimal, :dewey_normal, :edition_info, :isbn10, :isbn13, :language, :lcc_number, :marc_enc_level, :physical_description_text, :publisher_id, :publisher_name, :publisher_text, :subject_ids, :summary, :title, :title_latin, :title_long, :urls_text, :notes
  has_and_belongs_to_many :authors
  accepts_nested_attributes_for :authors
end
