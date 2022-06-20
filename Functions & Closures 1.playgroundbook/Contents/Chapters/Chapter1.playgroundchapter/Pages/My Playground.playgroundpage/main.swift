// Functions
// func funcName(parameterName: dataType) -> returnType  
func sayHello(name: String) -> String {
    return "Hello " + name + "!"
}
print(sayHello(name: "Andrie"))
    
// Functions without parameters
func helloWorld() -> String {
    return "Hello, World!"
}

print(helloWorld())
    
// functions without return values
func  sayHi(name: String) { // will return a Void type
    print("Hi, \(name)")
}
sayHi(name: "Andrie")

// Return multiple return values
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}
print(minMax(array: [1, 2, 3, 4, 5]))
let bounds = minMax(array: [1, 2, 3, 4, 5])
print("min is \(bounds.min) and max is \(bounds.max)")

// Function Parameter Names
// Have both external parameter names and local parameter names
// External parameter names label arguments passed to a function call
// Local parameter names is used when function is implemented 
// func funcName(externalName localName: Type)
func sayHello2(to p1: String, and p2: String) -> String {
    return "Hello \(p1) and \(p2)"
}
print(sayHello2(to: "Andrie", and: "Avani"))
// The use of external parameter names can allow a function to be called in an expressive, sentence-like manner, and still produce a readable and clear function body.
// If you provide an external parameter name for a given parameter, that external name must be used every time the function is called.


// Default Parameter Values
// Place parameters with default values at the end of the parameter list
func someFunc(num: Int = 4) -> Int {
    return num
}
print(someFunc())
print(someFunc(num: 2))

// Variadic Parameters
// Indicate the number of inputs of a specific type can vary
// Can accept 0+ parameters of a certain type and is denoted with a ... after the data type
// Think of *args or **kwargs in python
func arithmeticMean(numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return (total / Double((numbers.count)))
}
print(arithmeticMean(numbers: 1.1, 2.1, 3.4, 5.8))
// 1 Variadic parameter is allowed per function and it must be the last parameter of the list 
// For functions with default values, the parameters with default values are before the variadic parameter. The variadic parameter is always last


// In-Out Parameters
// Function parameters are constants by default. Trying to change the value will cause an error
// If you want to modify a parameter's values and want those changes to persist, use in-out parameters
func swapInts(a: inout Int, b: inout Int) {
    let tempA = a
    a = b
    b = tempA
    // Its value is passed in to the function, where it is modified. It's then passed back out of the function, where it replaces the original value.
}
// inout parameters cant be assigned a default value and variadic parameters cant be marked inout
// & is inserted directly before a variable's name when passed as an inout parameter
var someInt = 3
var anotherInt = 107
swapInts(a: &someInt, b: &anotherInt)
print("someInt:", someInt, "anotherInt:", anotherInt)

// Function Types
// Define a variable or a constant that is assigned a function
func addInts(a: Int, b: Int) -> Int {
    return a + b
}
var mathFunction: (Int, Int) -> Int = addInts
print("Results: \(mathFunction(1, 2))")

// Function types as parameter types
// A function type, such as (Int, Int) -> Int, can act as a parameter type for a different function, allowing for leaving some aspects of a function's implementation for the function's caller to provide calling the function.

func printResult(mathFunc: (Int, Int) -> Int, a: Int, b: Int) {
    print("Result: \(mathFunc(a, b))")
}
printResult(mathFunc: addInts, a: 3, b: 5)

// Function Types as Return Types
// A function type may be used as another function's return type, by writing a complete function type immediately following the return arrow (->) in the returning function.
func plus(input: Int) -> Int {
    return input + 1
}
func minus(input: Int) -> Int {
    return input - 1
}
func chooseFunc(flag: Bool) -> (Int) -> Int {
    // In the above example, the chooseFunc function returns another function of type (Int) -> Int, based on the value of its flag parameter.
    if flag {
        return plus
    } else {
        return minus
    }
}

// Nested Functions
func chooseFunc2(flag: Bool) -> (Int) -> Int {
    func plus2(input: Int) -> Int { return input + 2 }
    func minus2(input: Int) -> Int { return input - 2}
    if flag {
        return plus2
    } else {
        return minus2
    }
}
chooseFunc(flag: true)

// Recursion
func factorial(n: Int) -> Int {
    return n == 0 ? 1 : n * factorial(n: n-1)
}
print(factorial(n: 5))
