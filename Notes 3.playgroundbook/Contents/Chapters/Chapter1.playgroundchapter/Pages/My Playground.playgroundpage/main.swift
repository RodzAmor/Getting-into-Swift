// Arrays
// Array type can be written as Array<T> where T is a which value the array is allowed to store
// Can be expressed in its short form [T]
var emptyArray = [Int]()
var arrayLiteral: [String] = ["a", "b", "c", "d"]
// Swift type inference
var arrayLiteral2 = ["a", "b", "c", "d"] // Swift infers the array type

if arrayLiteral.isEmpty {
    print("Empty")
} else {
    print("The size of the array is \(arrayLiteral.count)")
}

// Array with a default value
var fourDouble = [Double](repeating: 0.0, count: 4) // repeating is the default value and count is the number of items
print(fourDouble)

// Modifying an array
var shop = ["Milk", "Eggs", "Cheese"]
shop.append("Flour")
shop += ["Chocolate", "Salmon"]
print(shop)
print("First item is \(shop[0])")
shop[0] = "Chocolate Milk"
print("First item is now \(shop[0])")
shop[1...3] = ["Butter"]
print(shop)
shop.insert("Syrup", at: 0)
print(shop)
shop.remove(at: 0)
print(shop)
var lastItem = shop.removeLast()
print(shop)
print(lastItem)

for item in shop {
    print(item)
}

for (index, value) in shop.enumerated() { // Enumerate to get index and value
    print("Item \(value) at index: \(index)")
}
