var distance: Int
distance = 4

switch distance {
case 0:
    print("No distance")
case 1...10:
    print("Distance between 1 to 10")
default:
    print(distance)
}
// Where statement
var point = (2, 3)
switch point {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x < y:
    print("\(x) < \(y)")
case let (x, y) where x > y:
    print("\(x) > \(y)")
default:
    print(point)
}

var x = 8
while x > 4 {
    print(x)
    x -= 1
}
// repeat-while loop
// makes first loop through the loop then considers the condition
repeat {
    print("Loops even if the while condition is false. x: " + String(x))
} while x > 4
repeat {
    print("x: " + String(x))
    x -= 1
} while x > 0

for index in 1...4 {
    print("\(index) multiplied by 5 is \(index * 5)")
}

// 4 Control Transfer Statements
// continue, break, fallthrough, and return
for num in 1...10 {
    if num % 2 == 0{
        continue // continue stops the loop and restarts at the beginning of next cycle
    }
    print(num)
}
for num in 1...10 {
    print(num) 
    break // Immediately terminates the loop
}
let num = 5
// Swift does not have default fallthrough
// Objective C has fallthrough
switch num {
case 1, 2, 3, 4, 5:
    print(num)
    fallthrough // falls through the next line. Does not check conditions
case 6:
    print(60000)
default:
    print("Default")
}

// String. Collection of Character
var emptyString = "" // empty string literals
var emptyString1 = String() // empty string
if emptyString1.isEmpty {
    print("String is empty")
}
var word = "words"
print(word.count)
