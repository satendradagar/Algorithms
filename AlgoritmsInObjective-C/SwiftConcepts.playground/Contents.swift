import UIKit

var str = "Hello, playground"

protocol Container {
    
    associatedtype Item
    
    associatedtype Item2

    mutating func append(_ item: Item, item2:Item2)
    var count: Int { get }
    subscript(i: Int) -> Item { get }
}

struct IntStack: Container{
    
    var items  = [Int]()

    mutating func push(_ item: Int) {
        items.append(item)
    }
    mutating func pop() -> Int {
        return items.removeLast()
    }

    typealias Item = Int
    typealias Item2 = Float

    mutating func append(_ item: Int, item2:Float) {
        items.append(item)
    }
    
    var count: Int{
        return items.count
    }
    
    subscript(i: Int) -> Int {
        return items[i]
    }
    
}

struct GenericStack<Element, Element2>: Container{
    
    var items  = [Element]()

      mutating func push(_ item: Element) {
          items.append(item)
      }
      mutating func pop() -> Element {
          return items.removeLast()
      }

//      typealias Item = Int
      
      mutating func append(_ item: Element, item2:Element2) {
          items.append(item)
      }
      
      var count: Int{
          return items.count
      }
      
      subscript(i: Int) -> Element {
          return items[i]
      }
//    typealias Item = Element
    
    
}
