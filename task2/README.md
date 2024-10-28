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

For Task #2
1. https://www.naukri.com/code360/library/static-binding-vs-dynamic-binding
2. https://medium.com/@sugamnp/static-and-dynamic-binding-9cc4547c2fe5
3. https://www.javatpoint.com/csharp-dynamic-binding
