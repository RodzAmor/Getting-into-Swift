// Notes Taken from Sololearn Swift 4 Course

// Single Line Comments
/* 
 Multi
 Line
 Comments
 */

print("Hello, World!")

let name = "Andrie" // let is for constants and cannot be changed
var age = 17 // var is mutable and can be changed

print("My name is \(name)") // this is how you use variables in a string
print("I am \(age) years old")

// Declaring multiple variables
let x = 0, y = 1, z = 2

// Basic Type Annotations
// Int - integers
// Dobule and Float - Floating point values (Float is 32 bits and Double is 64 bits) (Floats have 7 decimals of precision and Doubles have 15 decimals) Swift chooses Doubles when defining a variable
// Bool - boolean
// String - textual data
var words: String
words = "words"
var red, green, blue: String // Defining multiple variables

// Operators
// === is an identity operator to see if object references to the same instance
// also !==
// Ternary Conditional Operator - Shortcut for evaluating one of 2 expressions
// conditional expression ? True Expression : False Expression
name == "Andrie" ? print("Name is \(name)") : print("Name is not Andrie")

// Range operators
// closed range operator a...b that is range containing from a to b
// half-open range operator a..<b that is a range containing a but not b

// Optionals
// Used in a situation where values may be absent
// Says: There is a value and it is equal to ___ or there is no value at all

var myCode = Int? = 404 // Without any default value, it will automatically be set to nil
myCode = nil // valueless state
// ? indicates that it is an optional

// Switch statement
distance = 2
switch distance {
case 0:
    print("No Distance")
case:
}
