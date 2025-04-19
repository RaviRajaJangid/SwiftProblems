//: [Previous](@previous)
import Cocoa

//Swap numbers all possible ways
//1. using third variable
func swap1( a: inout Int, b: inout Int){
    let temp = a
    a = b
    b = temp
}
//2. using without third variable
func swap2( a: inout Int, b: inout Int){
    a = a + b //3a + 5b = 8 -> a = 8
    b = a - b //8a - 5b = 3 -> b = 3
    a = a - b //8a - 3b = 5 -> a = 5
}
//3. using bitwise operator
func swap3( a: inout Int, b: inout Int){
    a = a ^ b
    b = a ^ b
    a = a ^ b
}
var a = 10
var b = 20
print("Before Swap a:\(a) b:\(b)")
swap1(a: &a, b: &b)
print("After Swap a:\(a) b:\(b)")

print("Before Swap a:\(a) b:\(b)")
swap2(a: &a, b: &b)
print("After Swap a:\(a) b:\(b)")

print("Before Swap a:\(a) b:\(b)")
swap3(a: &a, b: &b)
print("After Swap a:\(a) b:\(b)")
//: [Next](@next)
