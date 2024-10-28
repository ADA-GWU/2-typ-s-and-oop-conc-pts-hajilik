# Base class for library items
class LibraryItem
    attr_accessor :title, :author, :publication_year
  
    def initialize(title, author, publication_year)
      @title = title
      @author = author
      @publication_year = publication_year
    end
  
    # the method displays information of the iterms (e.g, books, CDs, DVDs). It is a polymorphic method and will be overridden
    def display_info
      puts "Title: #{@title}"
      puts "Author: #{@author}"
      puts "Publication Year: #{@publication_year}"
    end
  end
  
  # Book class inherits LibraryItem
  class Book < LibraryItem
    attr_accessor :genre # it is unique property
  
    def initialize(title, author, publication_year, genre)
      super(title, author, publication_year) # derives from ancestor class
      @genre = genre
    end
  
    # display_info is overridden here, genre is included to book properties
    def display_info
      super
      puts "Genre: #{@genre}"
      puts "------------------"
    end
  end
  
  # DVDs class inherits LibraryItem as well
  class DVD < LibraryItem
    attr_accessor :director  # only belongs to this class
  
    def initialize(title, author, publication_year, director)
      super(title, author, publication_year)
      @director = director
    end
  
    # display_info is overriden to include DVD-specific information
    def display_info
      super
      puts "Director: #{@director}"
      puts "------------------"
    end
  end
  
  # CDs also inherits LibraryItem
  class CD < LibraryItem
    attr_accessor :artist
  
    def initialize(title, author, publication_year, artist)
      super(title, author, publication_year)
      @artist = artist
    end
  
    # display_info is overriden to include CD information
    def display_info
      super
      puts "Artist: #{@artist}"
      puts "------------------"
    end
  end
  
  # Library class for managing items
  class Library
    def initialize
      @items = []
    end
  
    # method for adding items to library
    def add_item(item)
      @items << item
    end
  
    # method for removing items from library
    def remove_item(item)
      @items.delete(item)
    end
  
    # this method print details of all items in the library
    def display_all_items
      @items.each(&:display_info)
    end
  end
  

  ### TESTING

  book = Book.new("Concepts of Programming Languages", "Robert Sebesta", 2015, "Programming")
  dvd = DVD.new("Inception", "Christopher Nolan", 2010, "Science Fiction")
  cd = CD.new("A Day at the Races", "Queen", 1976, "Rock")
  
  # print items info
  book.display_info
  dvd.display_info
  cd.display_info
  
  # Output
  # Title: Concepts of Programming Languages
  # Author: Robert Sebesta
  # Publication Year: 2015
  # Genre: Programming
  # ------------------
  # Title: Inception
  # Author: Christopher Nolan
  # Publication Year: 2010
  # Director: Science Fiction
  # ------------------
  # Title: A Day at the Races
  # Author: Queen
  # Publication Year: 1976
  # Artist: Rock
  # ------------------

  # creating library and adding items to it
  library = Library.new
  library.add_item(book)
  library.add_item(dvd)
  library.add_item(cd)
  
  # print all items in the library
  library.display_all_items
  
  # Output
  # Title: Concepts of Programming Languages
  # Author: Robert Sebesta
  # Publication Year: 2015
  # Genre: Programming
  # ------------------
  # Title: Inception
  # Author: Christopher Nolan
  # Publication Year: 2010
  # Director: Science Fiction
  # ------------------
  # Title: A Day at the Races
  # Author: Queen
  # Publication Year: 1976
  # Artist: Rock
  # ------------------


  library.remove_item(dvd) # let's remove dvd items from library 
  puts "\nLibrary items after removing DVD:"
  library.display_all_items

  # Library items after removing DVD:
  # Title: Concepts of Programming Languages
  # Author: Robert Sebesta
  # Publication Year: 2015
  # Genre: Programming
  # ------------------
  # Title: A Day at the Races
  # Author: Queen
  # Publication Year: 1976
  # Artist: Rock
  # ------------------
