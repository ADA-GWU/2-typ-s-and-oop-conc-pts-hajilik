# TASK #3: LIBRARY SYSTEM

The program displays the use of Object-Oriented Programming (OOP) principles such as inheritance, encapsulation, and polymorphism in Ruby by creating a simple library system. The system can manage such as adding, removing, displaying different types of library items, including books, DVDs, and CDs. It incorporates OOP concepts to handle common and unique properties of these items.

The project includes the following main classes:
1. LibraryItem: the base class for all items in the library, that defines `title`, `author`, `publication_year` attributes and a method to display these properties.
2. Book: inherits from `LibraryItem` and adds a unique `genre` attribute.
3. DVD: iherits from `LibraryItem` and adds a unique `director` attribute.
4. CD: inherits from `LibraryItem` and adds a unique `artist` attribute.
5. Library: manages (adding, removing, displaying) a collection of library items. 

## Key Concepts Implemented

1. Inheritance: `Book`, `DVD`, and `CD` classes inherit common properties (`title`, `author`, `publication_year`) from the base `LibraryItem` class, which allows for code reusability and a consistent structure for all item types.
   
2. Encapsulation (hiding): Each class encapsulates its own attributes and methods, keeping the code organized and modular. Attributes are made accessible through the use of `attr_accessor` for ease of access and modification.

3. Polymorphism: `display_info` method is defined in the `LibraryItem` class and is overridden in each inherited class to print item-specific details. This enables `display_all_items` method in the `Library` class to call `display_info` on any item demonstrating polymorphism.

For Task #3
1. https://medium.com/@cancerian0684/what-are-four-basic-principles-of-object-oriented-programming-645af8b43727
2. https://dev.to/ryosuke/object-oriented-programming-oop-with-ruby-on-rails-b1e
