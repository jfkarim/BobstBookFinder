class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :college_name
      t.string :dept_name
      t.string :major #of person who checked book out
      t.string :bib_author
      t.text :bib_title
      t.string :call_number_major #location of book (beginning of call number)

      #fields in data-file COLLEGE_NAME, DEPT_NAME, MAJOR (OF PERSON CHECKED), BIB_AUTHOR, BIB_TITLE, CALL_NUMBER_MAJOR

      t.timestamps
    end
    add_index :books, :college_name
    add_index :books, :dept_name
    add_index :books, :major
    add_index :books, :bib_author
    add_index :books, :bib_title
    add_index :books, :call_number_major
  end
end
