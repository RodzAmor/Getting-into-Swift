// Tuples
// Tuples group multiple values into a single, compound value. The values within a tuple can be of any type and do not have to share a common type.
let tup1 = ("abc", 1, [1, 2, 3])
// Can access tuple with index numbers
print(tup1.0)
print(tup1.1)
print(tup1.2)
// You can name individual elements and access them with the name
let person = (name: "Andrie", age: 17)
print("\(person.name)")
print("\(person.age)")

// Enumerations
// An enumeration defines a common type for a group of related values. It enables you to work with those values in a type-safe way within your code.
enum Compass {
    case North
    case South
    case West
    case East
}
var direction = Compass.West

// Unlike C and Objective-C, Swift enumeration members are not assigned a default integer value when they are created.
// In the Compass example above, North, South, East and West do not implicitly equal 0, 1, 2 and 3. Instead, the different enumeration members are fully-fledged values in their own right, with an explicitly defined type of Compass.
enum Planet {
    case Mercury, Venus, Earth, Mars, Jupiter
}
// Each enumeration definition specifies a brand new type. As with other types in Swift, their names (such as Compass and Planet) should be capitalized.

