// Classes and Structures
// When a new class or structure is defined, a brand new Swift type is defined.
struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var framerate = 0.0
}
// Accessing properties
let someResoltuon = Resolution()
let someVideoMode = VideoMode()
print("The width is \(someResoltuon.width)")
print(someVideoMode.resolution.width)
someVideoMode.resolution.width = 1280
    
// All structures have an automatically-generated memberwise initializer, which you can use to initialize the member properties of new structure instances. Initial values for the properties of the new instance can be passed to the memberwise initializer by name:
let vga = Resolution(width: 640, height: 480)

// Classes vs. Structures
// Structures are value types
// A value type is a type whose value is copied when it is assigned to a variable or constant, or when it is passed to a function.
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
// Because Resolution is a structure, a copy of the existing instance is made, and this new copy is assigned to cinema. Even though hd and cinema now have the same width and height, behind the scenes they are two completely different instances.
cinema.width = 2048
print("hd is still \(hd.width) pixels wide")

// Classes are reference types
// Unlike value types, reference types are not copied when assigned to a variable or constant, or when they are passed to a function. Rather than a copy, a reference to the existing instance is used instead.
let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true

let alsotenEighty = tenEighty // Both refer to the same VideoMode instance  
alsotenEighty.interlaced = false // The interlaced properties of both will be changed to false
// Rather than being declared as variables, tenEighty and alsoTenEighty are declared as constants. However, it's still possible to change their properties, because the values of the tenEighty and alsoTenEighty constants themselves do not actually change.

// Identity Operators
// === (Identical to) and !== (Not identical to) determine whether two constants or variables refer to the same instance of the class
if tenEighty === alsotenEighty {
    print("same")
}

/* Differences between classes and structures
 Structure instances are always passed by value, and class instances are always passed by reference. This means that they are suited to different kinds of tasks.
 
 As a general guideline, consider creating a structure instead of a class when one or more of these conditions apply:

1. The structure's primary purpose is to encapsulate a few relatively simple data values.
2. It is reasonable to expect that the encapsulated values will be copied rather than referenced when you assign or pass around an instance of that structure.
3. Any properties stored by the structure are themselves value types, which you would also expect to be copied, as opposed to being referenced.
4. It is not necessary for the structure to inherit properties or behavior from another existing type.
 
 Swift's String, Array, and Dictionary types are implemented as structures.
 */
