//: [Previous](@previous)

import UIKit
//1. let aa = let ar = [3, 2, 1,  4, 10] sum = 12
//2. let aa = [[[1, 2], 3, 4], 5, 6]
//3. let a = [1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0]
//let input : [Any] =  [[[1, 2], 3, 4], 5, 6]
//
//var o: [Int] = []
//
//
//for i in input {
//    if i is [Int] {
//        o.append(contentsOf: i as! [Int])
//    }else {
//        o.append(i as! Int)
//    }
//}


//func logic(val : [Int]) -> Int{
//    if(val is [Int]){
//        //logic(val: append(contentsOf: i as! [Int]))
//        for i in val {
//            return logic(val: i)
//        }
//    }
//    return val
//
//}

//o.sort()

//[1, 2, 3, 4, 5, 6]

//[3, 2, 1,  4, 10]
//
//sum = 12
//2+10
//2 num

//func dummy()->(Int?, Int?) {
//let ar = [3, 2, 1,  4, 10]
//let sum = 12
//for i  in ar {
//    if(sum == i + ar[ar.count - 1) {
//     return (i, ar[ar.count - 1 ))
//    }
// return (null, null)
//}

//let a = [1, 0, 0, 1, 1, 0, 0, 1, 1, 0, 0, 0]
//print(a.sorted())
//var o1 :[Int] = []
//var o2 :[Int] = []
//for i in a {
//    if(i==0){
//        o1.append(i)
//    }else {
//        o2.append(i)
//    }
//}
// o1 += o2
//print(o1)

var a = [1,1,2]
func rc(_ a: inout [Int])->Int{
    
    if a.count == 0 && a.count == 1{
        return a.count
    }
   
    var aset: Set = Set(a)
    a = Array(aset).sorted()
    return aset.count
}

func rc2(_ a: inout [Int])->Int{
    
    if a.count == 0 && a.count == 1{
        return a.count
    }
    var i = 0
    while a.count>=i {
        if(i+1 < a.count && a[i] == a[i+1] ){
            a.remove(at: i)
        }
        i = i+1
    }
    return a.count
}
var n2:[Int] = [Int]()

n2[0] = 10

print(n2[0])

//print(rc2(&a))
//print(a)
func runningSum(_ nums: [Int]) -> [Int] {
    var n2:[Int] = [Int]()
       if nums.count <= 1{
           return nums
       }
    var i: Int = 1
    n2.append(nums[0])
       while i < nums.count {
           var p = n2[i-1]
           n2.append( p + nums[i])
            i = i + 1
       }
       return n2
   }
let a2 = runningSum([1,1,1,1,1])
print(a2)


//output should be [1,2,3,4,5]


//: [Next](@next)
