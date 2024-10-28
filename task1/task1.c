#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define ARRAY_SIZE 100000
#define ITERATIONS 100000 

// 1. Static array
int staticArray[ARRAY_SIZE];

// #1 Use a static array 
void useStaticArray() {
    static int staticArray[ARRAY_SIZE];
    for (int i = 0; i < ARRAY_SIZE; i++) {
        staticArray[i] = i;
    }
}

// #2: Use a stack-allocated array
void useStackArray() {
    int stackArray[ARRAY_SIZE];
    for (int i = 0; i < ARRAY_SIZE; i++) {
        stackArray[i] = i;
    }
}

// #3: Use a heap-allocated array (it is allocated from dynamic memory)
void useHeapArray() {
    int *heapArray = (int *)malloc(ARRAY_SIZE * sizeof(int));
    if (heapArray == NULL) {
        fprintf(stderr, "Memory allocation failed\n");
        exit(1);
    }
    for (int i = 0; i < ARRAY_SIZE; i++) {
        heapArray[i] = i;
    }
    free(heapArray);
}

// measuring spent time
double measureTime(void (*func)()) {
    clock_t start = clock();
    for (int i = 0; i < ITERATIONS; i++) {
        func();
    }
    clock_t end = clock();
    return (double)(end - start) / CLOCKS_PER_SEC;
}


int main() {
    printf("For each method, %d iterations will be runned.\n\n", ITERATIONS);

    double staticTime = measureTime(useStaticArray);
    printf("Spent time by static array: %.4f seconds\n", staticTime);

    double stackTime = measureTime(useStackArray);
    printf("Spent time by stack array: %.4f seconds\n", stackTime);

    double heapTime = measureTime(useHeapArray);
    printf("Spent time by heap array: %.4f seconds\n", heapTime);

    return 0;
}
