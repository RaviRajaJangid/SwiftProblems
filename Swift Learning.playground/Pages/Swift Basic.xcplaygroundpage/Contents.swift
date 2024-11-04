//: [Previous](@previous)

import Foundation
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
