# TASK #1: STATIC, STACK, and HEAP ARRAY ALLOCATION in C

The program, task1.c, measures the time taken to allocate and access a large array (1000000) using three different methods in C programming language. The methods are:
1. Static Allocation (using 'static' keyword inside the function)
2. Stack Allocation (local variable inside the function)
3. Heap Allocation (using 'malloc' keyword for dynamic array)

The code measures the time to execute each method while calling them 100000 times and prints the results.

## Results of Expriments and Explanations

1. Static Array Allocation:  
   It has the fastest access time (9.7934 seconds) because it has its own pre-allocated memory space and persistence during program execution. Therefore, it does not require further reallocation with each function call and has a very low runtime. 

2. Stack Array Allocation:  
   It is slightly slower (10.2244 seconds) because each call of the function pushes the array onto the stack. Stack memory is automatically freed when the function returns, but creating large arrays on the stack is limited by the stack size and could give famous error, 'stack overflow'. Also, allocating and deallocating memory on the stack repeatedly can add overhead.

3. Heap Array Allocation:  
   Heap allocation is the slowest (12.7824 seconds) among them because each call to `malloc` must search for sufficient memory space in the heap, and each call to `free` must return that memory to the system. This feature adds substantial overhead compared to stack and static allocations. The heap is also prone to fragmentation, that is what could further degrade performance over repeated allocations and deallocations.



# TASK #2: STATIC AND DYNAMIC BINDING in C#

The program, task2.cs, demonstrates static binding and dynamic binding using the `virtual`, `override`, and `new` keywords in an Object-Oriented Programming (OOP) context. 

In the example, I use a family hierarchy: a `Father` class with two derived classes, `Son #1` and `Son #2`.

## What are Static and Dynamic Binding?

1. Static Binding:
   It, also known as early binding, resolves method calls at compile-time rather than runtime. The `new` keyword is used in derived classes to indicate that a method in the base class should be hidden. When the base class reference type is used, the base class method is invoked regardless of the derived type. In the program, 'Father.DisplayFamilyRole()' is called with a `Father` type reference, even when it points to `Son #1` or `Son #2`. This behavior demonstrates static binding.

2. Dynamic Binding:
   It, also known as late binding, is achieved through polymorphism. In C#, a base class method marked with the `virtual` keyword can be overridden in derived classes using the `override` keyword. This approach enables method calls to be resolved at **runtime** based on the actual derived type, not the base class reference type. In the program, 'Father.ShowLove()' is marked as `virtual`, and each `Son` class overrides this method with its own implementation. When called through a base class reference, the `ShowLove()` method of the actual derived class; either `Son1` or `Son2` is executed. This is what dynamic binding is.

The results of the code is provided below:

Static Binding
Father: I am the head of my family.
Father: I am the head of my family.
Father: I am the head of my family.

Dynamic Binding
Father: I love my children.
Son1: I love my family too.
Son2: I love in my own way, hahaha

Static Binding with Derived Types
Son #1: I am the eldest son.
Son2: I am the youngest son.



# TASK #3: LIBRARY SYSTEM

`Note`: Output is shown in the code itself.

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


# Reference

For Task #1
1. https://craftofcoding.wordpress.com/2015/12/07/memory-in-c-the-stack-the-heap-and-static/
2. https://www.geeksforgeeks.org/difference-between-stack-allocated-and-heap-allocated-arrays/
3. https://www.geeksforgeeks.org/difference-between-static-arrays-and-dynamic-arrays/
4. https://medium.com/@musheikh47/heap-array-vs-stack-array-58a872bb7508


For Task #2
1. https://www.naukri.com/code360/library/static-binding-vs-dynamic-binding
2. https://medium.com/@sugamnp/static-and-dynamic-binding-9cc4547c2fe5
3. https://www.javatpoint.com/csharp-dynamic-binding


For Task #3
1. https://medium.com/@cancerian0684/what-are-four-basic-principles-of-object-oriented-programming-645af8b43727
2. https://dev.to/ryosuke/object-oriented-programming-oop-with-ruby-on-rails-b1e
