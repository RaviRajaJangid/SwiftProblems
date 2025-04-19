//: [Previous](@previous)
///Compare 'print' and 'debugPrint' in Swift.
///In Swift, both 'print' and 'debugPrint' functions are used for logging values to the console, but they serve slightly different purposes and provide different output formats, especially useful while debugging.
///The print function outputs the given variable or message to the console in a human-readable form. This is the function you would typically use for quick debugging messages or for simple logging of information during development:
///On the other hand, debugPrint is designed to provide more detailed debugging information about the data it prints. This function outputs the textual representation of an instance that is suitable for debugging. For types that conform to the CustomDebugStringConvertible protocol, debugPrint will use the debugDescription property to get a more detailed representation of the instance, including additional debugging information like explicit quotes around strings and visual representation of escape characters:

///To sum up, you would typically use print for most day-to-day logging, but when you need precise format output for complex data types or want to inspect details that are not normally visible, debugPrint is the preferable choice.
import Foundation

public class Loging {
    //compare print and debugPrint
    let name = "Ravi"
    let age = 10
    var company: String? = "ibindsys"
    var salary: Int? = 10000
    public init(){
        
    }
    public func exe() {
        print("Print Output:")
        print(name) //Ravi
        print("debugPrint Output:")
        debugPrint(name) //"Ravi"
        
        print("Print Output:")
        print(age) //10
        print("debugPrint Output:")
        debugPrint(age) //10
        
        print("Print Output:")
        print(company) //Optional("ibindsys")
        print("debugPrint Output:")
        debugPrint(company)//Optional("ibindsys")
        
        print("Print Output:")
        print(salary) //Optional(1000) if type is double Optional(1000.0)
        print("debugPrint Output:")
        debugPrint(salary)//Optional(1000) if type is double Optional(1000.0)
    }
    
}
Loging().exe()

//below all three statements are valid
let letGreet :String     //Let allowed signle time initialisation
letGreet = "Hello"
let letName:String = "ravi"
print(letGreet)
print(letName)

//Int
var age: Int = 10
var age2 = 10

//Double
var width: Double = 5.11
var height = 5.11
var area: Int = Int(width) * Int(height)
print("Area \(area)")
print("area type \(type(of: area))")
let area2 = width * height
print("Area2 =\(area2)")
print("area2 type \(type(of: area2))")
print("\(width) == \(height) \(width == height)")
let t = type(of: area2)
print("\(t)")
let r: Character = "R"
print(r)
let nameChar: Array<Character> = Array<Character>(["R", "A", "V", "I"])
print(nameChar)
let nameChar2: [Character] = [Character](["R", "A", "V", "I"])
print(nameChar == nameChar2)
print(nameChar2)


var greeting: String = "Hi There"
greeting = "Hello"
var greeting2 = "Hi"


print(greeting + nameChar2)

let name = "My Name is Ravi"
//name = "Ravi Raja Jangid"//Cannot assign to value: 'name' is a 'let' constant
print(name)

//working with chars
for c in name {
    print(c)
}

//unicode
let a = "\u{0061}"
print("\(a == "a")")
let A:Character = "\u{0041}"
print(A)
print(A == "A")

var word = "cafe"
print("the number of characters in \(word) is \(word.count)")
// Prints "the number of characters in cafe is 4"


let acuteW = word + "\u{301}"
print(acuteW)
print("the number of characters in \(acuteW) is \(acuteW.count)")
print("\(acuteW == word)")
// Prints "the number of characters in cafe is 4"

let unicode: String = """
\u{0041}
\u{0061}
\u{0062}
\u{0063}
\u{0064}
\u{0065}
\u{0066}
\u{0067}
\u{0068}
\u{0069}
\u{0070}
\u{0071}
\u{0072}
\u{0073}
\u{0074}
\u{0075}
\u{0076}
\u{0077}
\u{0078}
\u{0079}
\u{0080}
\u{0081}
"""
//print(unicode)

for i in unicode.unicodeScalars {
    print(i)
}
let index = unicode.index(unicode.startIndex, offsetBy: 3 )

print(unicode[index])
print(unicode[unicode.startIndex])

var word2 = "Hello"
word2.insert("!", at: word2.endIndex)

print(word2)
word2.remove(at: word2.startIndex)
word2.remove(at: word2.index(before:  word2.endIndex))
print(word2)

//: [Next](@next)
