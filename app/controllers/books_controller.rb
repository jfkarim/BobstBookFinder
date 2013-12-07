class BooksController < ApplicationController
  
  def index
    search_title = params[:search_title]
    
    @search_results = []
    
    Book.all.each do |book|
      if @search_results.length == 20
        break
      end
      if book.bib_title.include?(search_title)
        @search_results << book
      end
    end
    
    render :index
  end
  
  def show
    
    @book = Book.find(params[:id]) #would be able to cache section and floor if section_id was in book model
    @section = Section.includes(:floor).find_by_name(@book.call_number_major)
    @floor = @section.floor
    
    render "pages/#{@floor.id}"
  end
  
end
