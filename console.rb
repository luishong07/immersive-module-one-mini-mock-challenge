require 'pry'
require_relative './book.rb'
require_relative './author.rb'
require_relative './book_author.rb'

book1 = Book.new("Gameing",5000)
book2 = Book.new("TEST",5000)

author1 = Author.new("VIDHI")
author2 = Author.new("TOM")
author3 = Author.new("Chris")


book_author1 = BookAuthor.new(book1,author1)
book_author2 = BookAuthor.new(book2,author1)
book_author3 = BookAuthor.new(book1,author2)
book_author4 = BookAuthor.new(book2,author3)




binding.pry
0
