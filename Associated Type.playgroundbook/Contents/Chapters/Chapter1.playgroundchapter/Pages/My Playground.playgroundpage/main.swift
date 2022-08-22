
import UIKit

protocol Appendable {
    associatedtype Item
    
    var collection: [Item] { get set }
    
    func append(_ item: Item)
}

class CustomArray: Appendable {
    var collection: [String] = []

    typealias Item = String

    func append(_ item: Item) {
        collection.append(item)
    }
}

class NumberArray: Appendable {
    typealias Item = Int
    
    var collection: [Int] = []

    func append(_ item: Int) {
        collection.append(item)
    }

    typealias Item = Int

    
}
