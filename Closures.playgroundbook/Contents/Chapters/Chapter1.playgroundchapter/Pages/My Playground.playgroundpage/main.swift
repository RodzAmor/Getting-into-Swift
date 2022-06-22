// Clousure
// A Closure is a self-contained block of functionality that can be passed around and used in your code.
// Global and nested functions are actually special kinds of closures.
// Closure expressions present a way to write inline closures using brief, focused syntax.
/*
 { (parameters) -> "return type" in
 statements
 }
 */
func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}
let names = ["Cc", "Aa", "Ee", "Bb", "Dd"]
var reversed = names.sorted(by: backwards)
print(reversed)
// Closure Method
// For the inline closure expression, the parameters and return type are written within the curly braces, rather than outside of them.
// in keyword is used to introduce closure's body
var reversed2 = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})
print(reversed2)

// All the types can be inferred 
var reversed3 = names.sorted(by: { s1, s2 in return s1 > s2})
print(reversed3)
// The parameter types and return type can always be inferred when passing a closure to a function as an inline closure expression. As a result, it is unnecessary to write an inline closure in its fullest form when the closure is used as a function argument.
// You still have the option of writing out the types. In fact, doing so is encouraged when you need to avoid ambiguity for others who might read your code.
var reversed4 = names.sorted(by: { s1, s2 in s1 > s2})
// return can be inferred

// Shorthand Argument Names
// Swift automatically provides shorthand argument names for inline closures. These argument names can be used to refer to the values of the closure's arguments, with the names $0, $1, $2, and so on.
var reversed5 = names.sorted(by: { $0 > $1 })
// There's actually an even shorter way to write the closure expression above. Swift's String type defines its string-specific implementation of the greater-than operator (>) as a function that has two parameters of type String, and returns a value of type Bool
// This exactly matches the function type needed for the sort method's second parameter. Just pass in the greater-than operator, and Swift will then infer that you want to use its string-specific implementation:
var reversed6 = names.sorted(by : > )
print(reversed6)
