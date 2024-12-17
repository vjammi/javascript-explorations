# javascript-explorations
My JavaScript and NodeJS Explorations


1. Basics of JavaScript
   Variables and data types (let, const, var)
   Operators (arithmetic, comparison, logical)
   Conditional statements (if, else, switch)
   Loops (for, while, for...of, for...in)
   Functions (declarations, expressions, arrow functions)

2. Intermediate JavaScript
   Arrays and array methods (map, filter, reduce, etc.)
   Objects and object manipulation
   DOM manipulation and events
   Error handling (try...catch)
   Introduction to Promises and asynchronous programming

3. Advanced JavaScript
   Functional programming concepts
   Higher-order functions
   Function composition
   Closures and currying
   Object-oriented programming (OOP)
   Prototypes and inheritance
   ES6 classes and methods
   Concurrency and asynchronous programming
   async/await
   Web APIs (e.g., fetch, setTimeout)
   Event loop and task queue

4. Building Projects
   Small hands-on projects to consolidate your learning

### Declaring variables in JavaScript
```
// Using let
let age = 25; // A variable that can be reassigned

// Using const
const name = "John"; // A constant variable that cannot be reassigned

// Using var (old way, not recommended)
var city = "New York";

// Logging to the console
console.log(age, name, city);
```

### Operators and conditional statements

#### Operators in JavaScript
Operators are symbols that perform operations on values. Here’s a breakdown:

2. Arithmetic Operators
Used for mathematical calculations.
```
let a = 10, b = 3;

console.log(a + b); // Addition: 13
console.log(a - b); // Subtraction: 7
console.log(a * b); // Multiplication: 30
console.log(a / b); // Division: 3.333...
console.log(a % b); // Modulus (remainder): 1
console.log(a ** b); // Exponentiation: 10^3 = 1000
```
2. Comparison Operators
Used to compare two values.

```
let x = 5, y = 10;

console.log(x > y);  // Greater than: false
console.log(x < y);  // Less than: true
console.log(x >= y); // Greater than or equal to: false
console.log(x <= y); // Less than or equal to: true
console.log(x == y); // Equality (value only): false
console.log(x === y); // Strict equality (value and type): false
console.log(x != y); // Inequality (value only): true
console.log(x !== y); // Strict inequality (value and type): true
```
3. Logical Operators
Combine multiple conditions.
```
let isAdult = true, hasID = false;

console.log(isAdult && hasID); // AND: false
console.log(isAdult || hasID); // OR: true
console.log(!isAdult);         // NOT: false
```

#### Conditional Statements
These allow your code to make decisions based on conditions.

2. if-else

```
    let temperature = 30;
    
    if (temperature > 25) {
    console.log("It's hot outside!");
    } else {
    console.log("It's cool outside!");
    }
```
2. else if
For multiple conditions.
```
    let score = 85;
    
    if (score >= 90) {
    console.log("Grade: A");
    } else if (score >= 80) {
    console.log("Grade: B");
    } else {
    console.log("Grade: C");
    }
```

3. switch
For checking multiple specific values.
```
let day = "Monday";

switch (day) {
case "Monday":
console.log("Start of the work week!");
break;
case "Friday":
console.log("Weekend is near!");
break;
default:
console.log("It's just another day.");
}
```

### Loops in JavaScript
1. for Loop
Runs a block of code a specified number of times.
```
for (let i = 1; i <= 5; i++) {
console.log("Iteration:", i);
}
// Output: Iteration 1, Iteration 2, ... Iteration 5
```
2. while Loop
Runs as long as the condition is true.
```
let count = 1;

while (count <= 5) {
console.log("Count:", count);
count++;
}
// Output: Count 1, Count 2, ... Count 5
```
3. do...while Loop
Executes the code block at least once, and then repeats while the condition is true.
```
let num = 1;

do {
console.log("Number:", num);
num++;
} while (num <= 5);
// Output: Number 1, Number 2, ... Number 5

```
4. for...of Loop

Used to iterate over iterable objects like arrays or strings.
```
let fruits = ["apple", "banana", "cherry"];

for (let fruit of fruits) {
console.log("Fruit:", fruit);
}
// Output: Fruit apple, Fruit banana, Fruit cherry

```
5. for...in Loop
Iterates over the properties of an object.

```
let car = { brand: "Toyota", model: "Corolla", year: 2020 };

for (let key in car) {
console.log(`${key}: ${car[key]}`);
}
// Output: brand: Toyota, model: Corolla, year: 2020
```
Control Statements
These modify the flow of loops.
break: Exits the loop immediately.

```
for (let i = 1; i <= 5; i++) {
if (i === 3) break;
console.log(i);
}
// Output: 1, 2
```

continue: Skips the current iteration.
```
for (let i = 1; i <= 5; i++) {
if (i === 3) continue;
console.log(i);
}
// Output: 1, 2, 4, 5
```

### Functions in JavaScript
Functions, which are the building blocks of reusable code in JavaScript.
1. Function Declaration
A function that’s defined with the function keyword.

```
function greet(name) {
console.log(`Hello, ${name}!`);
}

greet("Alice"); // Output: Hello, Alice!
```
2. Function Expression
A function can also be assigned to a variable.

```
const add = function (a, b) {
return a + b;
};

console.log(add(2, 3)); // Output: 5
```
3. Arrow Functions
A more concise syntax introduced in ES6.
```
const multiply = (a, b) => a * b;

console.log(multiply(4, 5)); // Output: 20
```
If there’s only one parameter, parentheses are optional:
```
const square = num => num ** 2;
console.log(square(4)); // Output: 16
```

For no parameters, you need empty parentheses:

```
const greet = () => console.log("Hello, world!");
greet(); // Output: Hello, world!
```

4. Default Parameters
You can assign default values to parameters.

```
function sayHello(name = "Guest") {
console.log(`Hello, ${name}!`);
}

sayHello(); // Output: Hello, Guest!
sayHello("Bob"); // Output: Hello, Bob!
```

#### Key Concepts
1. Return Statement Functions can return values using return.

```
function subtract(a, b) {
return a - b;
}

const result = subtract(10, 4);
console.log(result); // Output: 6
```
2. Scope
Global Scope: Variables declared outside any function.
Local Scope: Variables declared inside a function.
```
let globalVar = "I am global";

function example() {
let localVar = "I am local";
console.log(globalVar); // Accessible
console.log(localVar); // Accessible
}

example();
console.log(localVar); // Error: localVar is not defined
```
### Higher-Order Functions Functions that take other functions as arguments or return them.
```
    function operate(a, b, operation) {
      return operation(a, b);
    }

    const add = (x, y) => x + y;
    console.log(operate(5, 3, add)); // Output: 8
```

### Arrays and Array Methods in JavaScript

Arrays are one of the most commonly used data structures in JavaScript. They are used to store multiple values in a single variable.
Basics of Arrays

Declaring an array:

let fruits = ["apple", "banana", "cherry"];
console.log(fruits); // Output: ["apple", "banana", "cherry"]

Accessing elements:

console.log(fruits[0]); // Output: apple
console.log(fruits[2]); // Output: cherry

Modifying elements:

fruits[1] = "blueberry";
console.log(fruits); // Output: ["apple", "blueberry", "cherry"]

Array length:
   console.log(fruits.length); // Output: 3

Common Array Methods
Adding and Removing Elements

push(): Add an element to the end.
fruits.push("mango");
console.log(fruits); // ["apple", "blueberry", "cherry", "mango"]

pop(): Remove the last element.
fruits.pop();
console.log(fruits); // ["apple", "blueberry", "cherry"]

unshift(): Add an element to the beginning.

fruits.unshift("grape");
console.log(fruits); // ["grape", "apple", "blueberry", "cherry"]

shift(): Remove the first element.

    fruits.shift();
    console.log(fruits); // ["apple", "blueberry", "cherry"]

Iterating Over Arrays

    forEach(): Execute a function for each array element.

    fruits.forEach(fruit => console.log(fruit));

Transforming Arrays

    map(): Create a new array by applying a function to each element.

    let uppercasedFruits = fruits.map(fruit => fruit.toUpperCase());
    console.log(uppercasedFruits); // ["APPLE", "BLUEBERRY", "CHERRY"]

Filtering Arrays

    filter(): Create a new array with elements that pass a condition.

    let shortNames = fruits.filter(fruit => fruit.length <= 5);
    console.log(shortNames); // ["apple"]

Reducing Arrays

    reduce(): Accumulate array elements into a single value.

    let numbers = [1, 2, 3, 4];
    let sum = numbers.reduce((total, num) => total + num, 0);
    console.log(sum); // Output: 10

Searching Arrays

    indexOf(): Find the first occurrence of an element.

console.log(fruits.indexOf("blueberry")); // Output: 1

includes(): Check if an element exists.

        console.log(fruits.includes("cherry")); // Output: true

Task
    Create an array of numbers and use map to return a new array of their squares.
    Use filter to extract all numbers greater than a certain value from an array.
    Calculate the product of an array of numbers using reduce.

### Objects and Object Manipulation in JavaScript
Objects are key-value pairs that let you group related data and functionality together.
#### Creating an Object

You can create objects using curly braces {}.

let person = {
name: "Alice",
age: 25,
isStudent: true,
hobbies: ["reading", "traveling", "coding"],
greet: function () {
console.log(`Hello, my name is ${this.name}`);
},
};

console.log(person); // Output: { name: "Alice", age: 25, ... }

#### Accessing Object Properties

Dot Notation:
   console.log(person.name); // Output: Alice

Bracket Notation:
    console.log(person["age"]); // Output: 25

#### Modifying Properties
You can add, update, or delete properties dynamically.

// Add a new property
person.country = "USA";
console.log(person.country); // Output: USA

// Update a property
person.age = 26;
console.log(person.age); // Output: 26

// Delete a property
delete person.isStudent;
console.log(person.isStudent); // Output: undefined

#### Iterating Over Object Properties

    for...in Loop:

for (let key in person) {
console.log(`${key}: ${person[key]}`);
}
// Output: name: Alice, age: 26, ...

Object.keys(): Returns an array of keys.

console.log(Object.keys(person)); // Output: ["name", "age", "hobbies", "greet"]

Object.values(): Returns an array of values.

console.log(Object.values(person)); // Output: ["Alice", 26, ["reading", "traveling", "coding"], ...]

Object.entries(): Returns an array of key-value pairs.

    console.log(Object.entries(person));
    // Output: [["name", "Alice"], ["age", 26], ...]

### Methods in Objects
Methods are functions that belong to an object.

person.greet(); // Output: Hello, my name is Alice

Task
    Create an object representing a book with properties like title, author, yearPublished, and a method to display details.
    Add a new property to your object dynamically.
    Use Object.keys() or Object.entries() to iterate over the object.

### Error Handling in JavaScript

Errors can occur in your programs, and handling them gracefully is essential.
1. try...catch

The try block contains code that might throw an error, and the catch block handles the error.

try {
let result = 10 / 0;
console.log(result); // Runs fine as division by zero doesn’t throw an error in JavaScript
console.log(x); // This will throw an error (x is not defined)
} catch (error) {
console.error("An error occurred:", error.message);
}
// Output: An error occurred: x is not defined

2. finally

The finally block executes whether an error occurs or not.

try {
console.log("Trying something risky...");
throw new Error("Something went wrong!");
} catch (error) {
console.error(error.message);
} finally {
console.log("Cleaning up...");
}
// Output:
// Trying something risky...
// Something went wrong!
// Cleaning up...

### Asynchronous Programming
JavaScript is single-threaded but uses an event loop to handle asynchronous operations. Here’s how you deal with such operations:

1. Callback Functions

Functions passed as arguments to be executed later.

function fetchData(callback) {
setTimeout(() => {
callback("Data fetched!");
}, 2000);
}

fetchData(data => {
console.log(data); // Output after 2 seconds: Data fetched!
});

Callbacks can get messy when nested, leading to "callback hell."
2. Promises

A cleaner way to handle asynchronous operations.

    Creating a Promise:

const promise = new Promise((resolve, reject) => {
let success = true;
if (success) {
resolve("Operation successful!");
} else {
reject("Operation failed!");
}
});

promise
.then(result => console.log(result)) // Handles resolve
.catch(error => console.error(error)); // Handles reject

Chaining Promises:

    promise
      .then(result => {
        console.log(result);
        return "Chained result";
      })
      .then(chainedResult => console.log(chainedResult))
      .catch(error => console.error(error));

3. async/await
A modern and readable way to work with Promises.

function fetchData() {
return new Promise(resolve => {
setTimeout(() => resolve("Data fetched!"), 2000);
});
}

async function fetchAndDisplay() {
console.log("Fetching...");
const data = await fetchData();
console.log(data); // Output after 2 seconds: Data fetched!
}

fetchAndDisplay();

Task
    Write a function that fetches a user’s data (simulated with setTimeout) and logs it using Promises.
    Rewrite the function using async/await.
    Throw an error in one of the above examples and handle it with try...catch.

### Functional Programming in JavaScript
Functional programming (FP) is a programming paradigm that treats computation as the evaluation of mathematical functions and avoids changing state and mutable data. JavaScript supports functional programming concepts, making it a powerful tool for clean, reusable, and testable code.

#### Core Concepts of Functional Programming

1. First-Class Functions

Functions in JavaScript are treated like any other value. You can:

    Assign them to variables.
    Pass them as arguments.
    Return them from other functions.

const greet = name => `Hello, ${name}!`;

const sayHello = greet; // Assign to another variable
console.log(sayHello("Alice")); // Output: Hello, Alice!

2. Higher-Order Functions
A function that takes other functions as arguments or returns a function.

const applyOperation = (a, b, operation) => operation(a, b);

const add = (x, y) => x + y;
const multiply = (x, y) => x * y;

console.log(applyOperation(5, 3, add)); // Output: 8
console.log(applyOperation(5, 3, multiply)); // Output: 15

3. Immutability
In FP, you don’t change (mutate) data. Instead, you create new data structures.
Example: Immutable Array

const numbers = [1, 2, 3];
const newNumbers = [...numbers, 4]; // Add 4 without changing the original array

console.log(numbers); // Output: [1, 2, 3]
console.log(newNumbers); // Output: [1, 2, 3, 4]

4. Pure Functions
A pure function:

    Depends only on its input arguments.
    Produces the same output for the same inputs.
    Has no side effects (doesn’t modify external variables or state).

const pureAdd = (a, b) => a + b;

console.log(pureAdd(2, 3)); // Output: 5
console.log(pureAdd(2, 3)); // Output: 5 (always the same)

#### Common Functional Programming Techniques
1. Map

Transforms each element in an array using a function.

const numbers = [1, 2, 3];
const squared = numbers.map(num => num ** 2);

console.log(squared); // Output: [1, 4, 9]

2. Filter

Filters elements based on a condition.

const numbers = [1, 2, 3, 4, 5];
const even = numbers.filter(num => num % 2 === 0);

console.log(even); // Output: [2, 4]

3. Reduce

Reduces an array to a single value.

const numbers = [1, 2, 3, 4];
const sum = numbers.reduce((total, num) => total + num, 0);

console.log(sum); // Output: 10

4. Function Composition

Combining multiple functions into a single function.

const multiplyBy2 = x => x * 2;
const subtract3 = x => x - 3;

const compose = (f, g) => x => f(g(x));

const newFunction = compose(subtract3, multiplyBy2);

console.log(newFunction(5)); // Output: 7 (5 * 2 - 3)

Task
Use map to create a new array of square roots of numbers.
Use filter to create an array of numbers greater than a threshold.
Use reduce to find the product of an array of numbers.
Write a composed function that doubles a number and then subtracts 5.

### Diving Deeper into Functional Programming
Functional programming becomes powerful when we start combining concepts like function composition, currying, and closures. Let’s explore these in detail.
Function Composition

Function composition combines two or more functions into a single function where the output of one function becomes the input of another.
Example:

const multiplyBy2 = x => x * 2;
const add3 = x => x + 3;

const compose = (f, g) => x => f(g(x));

const multiplyThenAdd = compose(add3, multiplyBy2);

console.log(multiplyThenAdd(5)); // Output: 13 (5 * 2 + 3)

#### Currying

Currying transforms a function with multiple arguments into a sequence of functions that each take a single argument.
Example:

// Regular function
const add = (a, b) => a + b;

// Curried function
const curriedAdd = a => b => a + b;

console.log(curriedAdd(5)(3)); // Output: 8

// Partial application
const add5 = curriedAdd(5);
console.log(add5(10)); // Output: 15

#### Closures

A closure is a function that "remembers" the variables from its outer scope, even after the outer function has returned.
Example:

function outerFunction(outerVariable) {
return function innerFunction(innerVariable) {
console.log(`Outer: ${outerVariable}, Inner: ${innerVariable}`);
};
}

const closureExample = outerFunction("Outside");
closureExample("Inside");
// Output: Outer: Outside, Inner: Inside

#### Higher-Order Functions in Depth
Higher-order functions allow for elegant data manipulation. Let’s revisit some common examples:

    Chaining Array Methods Combine map, filter, and reduce for complex transformations.

const numbers = [1, 2, 3, 4, 5];

const result = numbers
.map(num => num * 2)       // [2, 4, 6, 8, 10]
.filter(num => num > 5)    // [6, 8, 10]
.reduce((sum, num) => sum + num, 0); // 24

console.log(result); // Output: 24

#### Custom Higher-Order Function

    const withLogging = fn => (...args) => {
      console.log(`Calling function with arguments: ${args}`);
      const result = fn(...args);
      console.log(`Result: ${result}`);
      return result;
    };

    const multiply = (a, b) => a * b;
    const loggedMultiply = withLogging(multiply);

    loggedMultiply(3, 4);
    // Output:
    // Calling function with arguments: 3,4
    // Result: 12

### Declarative vs Imperative Code
Functional programming emphasizes declarative code, which describes what to do, over imperative code, which describes how to do it.
Example: Find the sum of squares of even numbers in an array.

    Imperative (How):

const numbers = [1, 2, 3, 4, 5];
let sum = 0;

for (let i = 0; i < numbers.length; i++) {
if (numbers[i] % 2 === 0) {
sum += numbers[i] ** 2;
}
}

console.log(sum); // Output: 20

#### Declarative (What):

    const numbers = [1, 2, 3, 4, 5];

    const sum = numbers
      .filter(num => num % 2 === 0) // [2, 4]
      .map(num => num ** 2)         // [4, 16]
      .reduce((total, num) => total + num, 0);

    console.log(sum); // Output: 20

Task
    Write a curried function to calculate the volume of a box (length, width, height).
    Create a closure that generates unique IDs starting from 1.
    Chain map, filter, and reduce to process an array of objects (e.g., filter for active users, map to extract names, reduce to count them).


### Concurrency in JavaScript
Concurrency refers to the ability of a program to deal with multiple tasks at once. JavaScript achieves concurrency via its event loop, which handles asynchronous tasks like I/O operations, API calls, and timers, while keeping the single-threaded nature of the JavaScript runtime.

#### Key Concepts
1. Event Loop

The event loop processes tasks in two phases:

    Call Stack: Where synchronous code executes.
    Task Queue: Where asynchronous tasks (e.g., setTimeout, Promises) wait to be executed once the stack is clear.

2. Asynchronous APIs in JavaScript

JavaScript offers several ways to handle asynchronous tasks:

    Callbacks
    Promises
    async/await

1. Callbacks
A function is passed as an argument to another function to be executed later.
Example:

function fetchData(callback) {
setTimeout(() => {
callback("Data fetched!");
}, 2000);
}

fetchData(data => {
console.log(data); // Output after 2 seconds: Data fetched!
});

2. Promises
Promises are a cleaner way to manage asynchronous operations. They represent a value that may be available now, or in the future, or never.
Example:

const fetchData = () => {
return new Promise((resolve, reject) => {
setTimeout(() => {
resolve("Data fetched!");
}, 2000);
});
};

fetchData()
.then(data => console.log(data)) // Output after 2 seconds: Data fetched!
.catch(error => console.error(error));

Parallel Promises with Promise.all

Handle multiple promises concurrently.

const promise1 = Promise.resolve("First");
const promise2 = new Promise(resolve => setTimeout(() => resolve("Second"), 2000));

Promise.all([promise1, promise2])
.then(results => console.log(results)) // Output after 2 seconds: ["First", "Second"]
.catch(error => console.error(error));

3. Async/Await

async/await is syntactic sugar over Promises, making asynchronous code easier to read and write.
Example:

const fetchData = () => {
return new Promise(resolve => {
setTimeout(() => resolve("Data fetched!"), 2000);
});
};

async function getData() {
console.log("Fetching...");
const data = await fetchData();
console.log(data); // Output after 2 seconds: Data fetched!
}

getData();

Concurrent Execution with Promise.all

async function fetchAll() {
const results = await Promise.all([
fetchData(),
Promise.resolve("Another result")
]);
console.log(results); // Output after 2 seconds: ["Data fetched!", "Another result"]
}

fetchAll();

### Concurrency Patterns

    Promise.race Resolves or rejects as soon as the first promise settles.

    const slowPromise = new Promise(resolve => setTimeout(() => resolve("Slow"), 3000));
    const fastPromise = new Promise(resolve => setTimeout(() => resolve("Fast"), 1000));

    Promise.race([slowPromise, fastPromise]).then(result => console.log(result));
    // Output after 1 second: Fast

    Throttling and Debouncing
        Throttling limits the execution of a function to a fixed interval.
        Debouncing delays execution until a certain period of inactivity.

Task
    Create a function that simulates fetching two pieces of data (user and posts) in parallel using Promise.all.
    Write an async/await function that fetches data and logs an error if fetching fails.
    Use Promise.race to simulate a timeout for a slow operation. If the operation takes too long, reject the promise.

### Advanced Topics in Concurrency: Worker Threads and Streams
JavaScript introduces powerful tools for handling concurrency, especially for CPU-intensive tasks or real-time data handling. Let's explore Worker Threads and Streams.

1. Worker Threads

Worker Threads in Node.js allow you to run JavaScript code in parallel threads. This is especially useful for CPU-intensive tasks, as JavaScript is single-threaded by default.
Key Features

    Runs code in a separate thread without blocking the main event loop.
    Ideal for tasks like image processing, data compression, or mathematical computations.

Basic Example: Worker Thread
Main Thread (File: main.js)

const { Worker } = require("worker_threads");

const worker = new Worker("./worker.js");

worker.on("message", message => {
console.log(`Message from worker: ${message}`); // Output: Processed: Hello World
});

worker.on("error", error => {
console.error("Worker Error:", error);
});

worker.postMessage("Hello World");

Worker Thread (File: worker.js)

const { parentPort } = require("worker_threads");

parentPort.on("message", message => {
const result = `Processed: ${message}`;
parentPort.postMessage(result);
});

Worker Thread with Data Processing

Imagine processing a large array:
Main Thread

const { Worker } = require("worker_threads");

const worker = new Worker("./worker.js");

worker.postMessage([1, 2, 3, 4, 5]); // Send array to worker

worker.on("message", result => {
console.log("Processed Result:", result); // Output: Processed Result: [2, 4, 6, 8, 10]
});

Worker Thread

const { parentPort } = require("worker_threads");

parentPort.on("message", numbers => {
const processed = numbers.map(num => num * 2);
parentPort.postMessage(processed);
});

Best Practices with Worker Threads
    Offload CPU-intensive tasks only; for I/O-bound tasks, async patterns (e.g., Promises) are sufficient.
    Use shared memory (via SharedArrayBuffer) for efficient data exchange.

2. Streams in Node.js
Streams allow you to process large data chunks incrementally, making them memory-efficient for handling large files, network responses, etc.
Types of Streams

    Readable Streams: Data is consumed from a source.
    Writable Streams: Data is written to a destination.
    Duplex Streams: Both readable and writable (e.g., sockets).
    Transform Streams: Processes data while reading and writing.

#### Readable Streams Example
Read a Large File

const fs = require("fs");

const readStream = fs.createReadStream("largeFile.txt", { encoding: "utf-8" });

readStream.on("data", chunk => {
console.log("Chunk Received:", chunk);
});

readStream.on("end", () => {
console.log("Finished reading the file.");
});

#### Writable Streams Example
Write Data to a File

const fs = require("fs");

const writeStream = fs.createWriteStream("output.txt");

writeStream.write("Hello, World!\n");
writeStream.write("This is a writable stream.\n");

writeStream.end(); // Close the stream
writeStream.on("finish", () => {
console.log("Finished writing to the file.");
});

#### Piping Streams

You can connect a readable stream directly to a writable stream using .pipe().
Copy a File

const fs = require("fs");

const readStream = fs.createReadStream("input.txt");
const writeStream = fs.createWriteStream("output.txt");

readStream.pipe(writeStream);

writeStream.on("finish", () => {
console.log("File copied successfully.");
});

#### Transform Streams Example
Compress a File Using zlib

const fs = require("fs");
const zlib = require("zlib");

const readStream = fs.createReadStream("input.txt");
const writeStream = fs.createWriteStream("output.txt.gz");
const gzip = zlib.createGzip();

readStream.pipe(gzip).pipe(writeStream);

writeStream.on("finish", () => {
console.log("File compressed successfully.");
});

#### Best Practices with Streams
    Always handle errors with .on("error", ...).
    Use backpressure mechanisms to handle data flow control efficiently.

### Object-Oriented Programming (OOP) in JavaScript
OOP is a programming paradigm that structures code using objects, which bundle state (data) and behavior (methods) together. JavaScript supports OOP with features like classes, inheritance, and polymorphism.

#### Key Concepts in OOP
1. Classes and Objects

A class is a blueprint for creating objects. Objects are instances of classes.
Example:

class Person {
constructor(name, age) {
this.name = name;
this.age = age;
}

greet() {
return `Hello, my name is ${this.name} and I am ${this.age} years old.`;
}
}

const person1 = new Person("Alice", 25);
console.log(person1.greet()); // Output: Hello, my name is Alice and I am 25 years old.

2. Encapsulation

Encapsulation hides the internal state of an object and only exposes necessary information through methods.
Example:

class BankAccount {
constructor(balance) {
this._balance = balance; // Use "_" to indicate a private variable
}

deposit(amount) {
this._balance += amount;
}

withdraw(amount) {
if (amount > this._balance) {
console.log("Insufficient balance");
} else {
this._balance -= amount;
}
}

getBalance() {
return this._balance;
}
}

const account = new BankAccount(100);
account.deposit(50);
account.withdraw(30);
console.log(account.getBalance()); // Output: 120

3. Inheritance

Inheritance allows one class (child) to inherit properties and methods from another class (parent).
Example:

class Animal {
constructor(name) {
this.name = name;
}

speak() {
console.log(`${this.name} makes a noise.`);
}
}

class Dog extends Animal {
speak() {
console.log(`${this.name} barks.`);
}
}

const dog = new Dog("Buddy");
dog.speak(); // Output: Buddy barks.

4. Polymorphism

Polymorphism allows methods in child classes to override methods in the parent class.
Example:

class Shape {
area() {
throw new Error("Method 'area()' must be implemented.");
}
}

class Circle extends Shape {
constructor(radius) {
super();
this.radius = radius;
}

area() {
return Math.PI * this.radius ** 2;
}
}

class Rectangle extends Shape {
constructor(width, height) {
super();
this.width = width;
this.height = height;
}

area() {
return this.width * this.height;
}
}

const circle = new Circle(5);
console.log(circle.area()); // Output: 78.53981633974483

const rectangle = new Rectangle(4, 6);
console.log(rectangle.area()); // Output: 24

5. Static Methods and Properties

Static methods and properties belong to the class, not its instances.
Example:

class MathUtils {
static add(a, b) {
return a + b;
}
}

console.log(MathUtils.add(5, 3)); // Output: 8

#### Modern OOP Features in JavaScript
1. Private Fields
Private fields ensure encapsulation by restricting direct access.

class Counter {
#count = 0; // Private field

increment() {
this.#count++;
}

getCount() {
return this.#count;
}
}

const counter = new Counter();
counter.increment();
console.log(counter.getCount()); // Output: 1

2. Getters and Setters
Getters and setters allow controlled access to properties.

class Temperature {
constructor(celsius) {
this.celsius = celsius;
}

get fahrenheit() {
return this.celsius * 1.8 + 32;
}

set fahrenheit(value) {
this.celsius = (value - 32) / 1.8;
}
}

const temp = new Temperature(25);
console.log(temp.fahrenheit); // Output: 77
temp.fahrenheit = 86;
console.log(temp.celsius); // Output: 30

Task
    Create a class Car with properties make, model, and year, and a method getDetails() that returns a formatted string.
    Extend Car into a ElectricCar class that includes a batteryCapacity property and overrides getDetails() to include battery details.
    Implement a Shape class with polymorphism for area calculation (e.g., Circle, Rectangle).


### Tasks on Object-Oriented Programming
Task 1: Create a class Car

    The Car class should have:
        Properties: make, model, year.
        Method: getDetails() that returns a formatted string like: "Car: Toyota Corolla (2022)".

Task 2: Extend Car to ElectricCar

    The ElectricCar class should:
        Add a new property batteryCapacity.
        Override getDetails() to include the battery capacity: "Electric Car: Tesla Model 3 (2022), Battery: 75 kWh".

Task 3: Implement Polymorphism with Shape

    Create a base class Shape with:
        A method area() that throws an error if not implemented.
    Extend Shape with:
        Circle (with a radius property).
        Rectangle (with width and height properties).
    Each subclass should override the area() method.

Solution
Task 1: Car Class

class Car {
constructor(make, model, year) {
this.make = make;
this.model = model;
this.year = year;
}

getDetails() {
return `Car: ${this.make} ${this.model} (${this.year})`;
}
}

const car = new Car("Toyota", "Corolla", 2022);
console.log(car.getDetails()); // Output: Car: Toyota Corolla (2022)

Task 2: ElectricCar Class

class ElectricCar extends Car {
constructor(make, model, year, batteryCapacity) {
super(make, model, year);
this.batteryCapacity = batteryCapacity;
}

getDetails() {
return `Electric Car: ${this.make} ${this.model} (${this.year}), Battery: ${this.batteryCapacity} kWh`;
}
}

const electricCar = new ElectricCar("Tesla", "Model 3", 2022, 75);
console.log(electricCar.getDetails());
// Output: Electric Car: Tesla Model 3 (2022), Battery: 75 kWh

Task 3: Polymorphism with Shape

class Shape {
area() {
throw new Error("Method 'area()' must be implemented.");
}
}

class Circle extends Shape {
constructor(radius) {
super();
this.radius = radius;
}

area() {
return Math.PI * this.radius ** 2;
}
}

class Rectangle extends Shape {
constructor(width, height) {
super();
this.width = width;
this.height = height;
}

area() {
return this.width * this.height;
}
}

const circle = new Circle(5);
console.log(`Circle Area: ${circle.area()}`); // Output: Circle Area: 78.53981633974483

const rectangle = new Rectangle(4, 6);
console.log(`Rectangle Area: ${rectangle.area()}`); // Output: Rectangle Area: 24

Next Steps
    Experiment by adding more features like private fields, getters/setters, or static methods.
    Let me know if you'd like additional tasks or want to move to another topic!

### ECMAScript Modules (ESM) vs. CommonJS
In JavaScript, there are two main module systems:
    ECMAScript Modules (ESM): The modern standard for modules in JavaScript.
    CommonJS (CJS): The older module system primarily used in Node.js.

#### Key Differences Between ESM and CommonJS
Feature	ESM	CommonJS
Syntax	import/export	require/module.exports
Default Support in Node.js	Yes (from v12 with .mjs)	Default
File Extension	.js (or .mjs for clarity)	.js
Loading	Static	Dynamic
Top-Level await	Supported	Not supported
ECMAScript Modules (ESM)
Example: Creating and Using ESM Modules

    Create a Module (math.js):

// math.js
export const add = (a, b) => a + b;
export const subtract = (a, b) => a - b;

export default function multiply(a, b) {
return a * b;
}

    Import and Use the Module (index.mjs):

// index.mjs
import multiply, { add, subtract } from './math.js';

console.log(add(5, 3)); // Output: 8
console.log(subtract(10, 4)); // Output: 6
console.log(multiply(4, 2)); // Output: 8

    Note: Use the .mjs extension or set "type": "module" in package.json for Node.js.

    Run the Code:

node index.mjs

#### CommonJS (CJS)
Example: Creating and Using CommonJS Modules

    Create a Module (math.js):

// math.js
const add = (a, b) => a + b;
const subtract = (a, b) => a - b;

module.exports = {
add,
subtract,
multiply: (a, b) => a * b,
};

    Import and Use the Module (index.js):

// index.js
const { add, subtract, multiply } = require('./math');

console.log(add(5, 3)); // Output: 8
console.log(subtract(10, 4)); // Output: 6
console.log(multiply(4, 2)); // Output: 8

    Run the Code:

node index.js

#### Publishing Modules to npm
To publish a module on npm:
    Initialize a Node.js Package: Run the following command and answer the prompts:

npm init

This creates a package.json file.

Structure Your Module: Create a file structure like this:

my-module/
├── index.js
├── package.json
├── README.md
└── LICENSE

Write the Module Code: In index.js, export the functionality:

// index.js
module.exports = {
greet: function (name) {
return `Hello, ${name}!`;
},
};

Add Metadata to package.json: Ensure the main field points to your entry file (index.js):

{
"name": "my-module",
"version": "1.0.0",
"description": "A simple greeting module",
"main": "index.js",
"keywords": ["greeting", "example"],
"author": "Your Name",
"license": "MIT"
}

Login to npm: Log in with your npm account:

npm login

Publish the Module: Publish the package:

npm publish

Install and Test the Module: Install your module globally or in another project:

npm install my-module

Use it in a project:

    const myModule = require('my-module');
    console.log(myModule.greet('World')); // Output: Hello, World!

#### Publishing ESM Modules

To publish ESM modules, set "type": "module" in package.json:

{
"name": "my-esm-module",
"version": "1.0.0",
"type": "module",
"main": "index.js"
}

Then write your code in ESM format:

// index.js
export const greet = (name) => `Hello, ${name}!`;

Users can install and use it:

import { greet } from 'my-esm-module';
console.log(greet('World')); // Output: Hello, World!

#### Choosing Between ESM and CommonJS

    Use ESM for modern projects to align with the latest JavaScript standard.
    Use CommonJS if you're working on legacy Node.js code or need compatibility with older libraries.
