import Foundation

@propertyWrapper struct capitalised {
   
    var wrappedValue: String {
        didSet {
            wrappedValue = wrappedValue.capitalized
        }
    }
    init(wrappedValue: String) {
        self.wrappedValue = wrappedValue.capitalized
    }
}

struct User {
    @capitalised var firstName:String
    @capitalised var lastName:String
}

var u1 = User(firstName: "ravi", lastName: "raja")

print(u1.firstName,u1.lastName)
u1.lastName = "jangid"
print(u1.firstName,u1.lastName)
