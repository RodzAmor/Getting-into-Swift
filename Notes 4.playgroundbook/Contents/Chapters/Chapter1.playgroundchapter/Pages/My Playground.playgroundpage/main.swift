// Sets
// Store distinct values with the same type when there is no concern item order (Every element is unique)
// Set<T> where T is the type 
var emptyCharSet = Set<Character>()
var names: Set<String> = ["Andrie", "Avani", "Celia"]
// var names: Set = ["Andrie", "Avani", "Celia"] Swift infers that it is a String
names.insert("Celina")
var removedName = names.remove("Celia")
print(removedName)
print(names)
if names.contains("Andrie") {
    print("That is my name!")
} else {
    print("I am not in this set")
}

for name in names {
    print(name)
}
for name in names.sorted() {
    print(name)
}
// Set Operations
// a.union(b) combines both sets
// a.subtract(b) only the elements in set a that is not in set b
// a.intersection(b) makes a set of elements that is shared by both sets
// a.symmetricDifference(b) a set of elements that is not shared by both sets

// Disjoint - set a and b share none of the same values
// Subset & superset - subset b only contains elements in superset a. superset a has more elements

// Dictionaries
// Dictionaries<Key, Value> and shorthand form is [Key: Value]
// The keys must be of the same type and the value must be of the same type
var airports = [Int: String]() // Empty Dictionary
// airports = [String: String]() // Cannot change dictionary type
var airports2 = [String: String]()
airports2 = ["TOR" : "Toronto", "NY" : "New York"]
// Add a new item
airports2["LHR"] = "London"
let oldValue = airports2.updateValue("New York", forKey: "NY") // Returns the old value
print(oldValue)
let airportName = airports2["NY"]
print(airportName)
airports2["APL"] = "Apple"
airports2["APL"] = nil // removes a key value pair

// Iterating over a dictionary
// dictionary is returned as a (key, value) tuple
for (airportCode, airportName) in airports2 {
    print("\(airportCode): \(airportName)")
}
for airportCode in airports2.keys {
    print("Airport code: \(airportCode)")
}
for airportName in airports2.values {
    print("Airport name: \(airportName)")
}
// Dictionaries have no defined ordering. Use sort() method to iterate over keys or values 
