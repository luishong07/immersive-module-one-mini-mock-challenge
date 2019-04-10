class Author

    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def all_books_authors
        BookAuthor.all.select do |bookauthor|
            bookauthor.author == self
         end
    end


    def books
        self.all_books_authors.map do |book_author|
            book_author.book
        end
    end

    def write_book(title, word_count)
        book = Book.new(title,word_count)
        BookAuthor.new(book,self)
    end

    def total_words
        #should return the total number of words that author has written across all of their authored books.
        total = 0
        self.books.each do |book|
            total += book.word_count 
            # total = total + book.word_count
        end
        total
    end

    def self.most_words
    
        self.all.max_by do |author|
            author.total_words
        end
    end          

end