class Book < ActiveRecord::Base
  attr_accessible :college_name, :dept_name, :major, 
                  :bib_author, :bib_title, :call_number_major
                  
  validates :bib_title, presence: true
end
