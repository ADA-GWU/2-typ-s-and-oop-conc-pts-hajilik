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

For Task #1
1. https://craftofcoding.wordpress.com/2015/12/07/memory-in-c-the-stack-the-heap-and-static/
2. https://www.geeksforgeeks.org/difference-between-stack-allocated-and-heap-allocated-arrays/
3. https://www.geeksforgeeks.org/difference-between-static-arrays-and-dynamic-arrays/
4. https://medium.com/@musheikh47/heap-array-vs-stack-array-58a872bb7508
