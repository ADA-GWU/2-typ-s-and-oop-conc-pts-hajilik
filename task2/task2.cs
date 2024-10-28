using System;

namespace Binding {

    // Father (base class)
    class Father {

        // Static binding with the new keyword
        public void DisplayFamilyRole() {
            Console.WriteLine("Father: I am the head of my family.");
        }

        // Dynamic binding with the virtual keyword
        public virtual void ShowLove() {
            Console.WriteLine("Father: I love my children.");
        }
    }

    // Son #1 (derived class)
    class Son1 : Father{
        // Static binding: hides DisplayFamilyRole function
        public new void DisplayFamilyRole() {
            Console.WriteLine("Son #1: I am the eldest son.");
        }

        // Dynamic binding: overrides ShowLove function
        public override void ShowLove() {
            Console.WriteLine("Son1: I love my family too.");
        }
    }

    // Son #2 (derived class)
    class Son2 : Father {
        // Static binding: hides DisplayFamilyRole function
        public new void DisplayFamilyRole() {
            Console.WriteLine("Son2: I am the youngest son.");
        }

        // Dynamic binding: overrides ShowLove function
        public override void ShowLove() {
            Console.WriteLine("Son2: I love in my own way, hahaha");
        }
    }

    class Program {
        static void Main(string[] args) {
            Father father = new Father();
            Father son1AsFather = new Son1(); // base class reference to Son1
            Father son2AsFather = new Son2(); // base class reference to Son2

            Console.WriteLine("Static Binding");
            father.DisplayFamilyRole(); // this calls Father’s version
            son1AsFather.DisplayFamilyRole(); // this two calls Father's version due to static binding
            son2AsFather.DisplayFamilyRole(); 

            Console.WriteLine("\nDynamic Binding");
            father.ShowLove(); // this calls Father’s ShowLove function
            son1AsFather.ShowLove(); // this two alls Son1’s overridden ShowLove function
            son2AsFather.ShowLove(); 

            Console.WriteLine("\nStatic Binding with Derived Types");
            Son1 son1 = new Son1(); // Son #1
            Son2 son2 = new Son2(); // Son #2
            son1.DisplayFamilyRole(); // calls these two Son #1 and Son #2 version due to new keyword
            son2.DisplayFamilyRole(); 
        }
    }
}
