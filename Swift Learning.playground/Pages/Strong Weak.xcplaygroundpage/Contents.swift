//: [Previous](@previous)

import Foundation

//ARC is compile time not run time
class Child {
    let name: String
    weak var parent: Person?
    deinit {
        print("Child \(name) deinit")
    }
    init(name: String, parent: Person? = nil) {
        self.name = name
        self.parent = parent
    }
}
class Person {
    let name: String
    weak var child: Child?
    init(name: String) {
        self.name = name
    }
    deinit {
        print("Person \(name) deinit")
    }
}

var p:Person? = Person(name: "John")
p?.child = Child(name:"Kivi", parent: p)

p = nil



//: [Next](@next)
