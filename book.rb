class Book

    attr_accessor :title, :word_count

    @@all = []

    def initialize(title, word_count)
        @title = title
        @word_count = word_count
        @@all << self
    end

    def self.all
        @@all
    end

    def all_books_authors
        BookAuthor.all.select do |bookauthor|
            bookauthor.book == self
         end
    end

    def authors

        self.all_books_authors.map do |result|
                    result.author
                end

            #  results =    BookAuthor.all.select do |bookauthor|
            #         bookauthor.book == self
            #      end
            #      authors =  results.map do |result|
            #         result.author
            #     end

    end


end