
let  a = 5 / 3
print(a)

import UIKit
///solve three sum:
///Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.
/// Notice that the solution set must not contain duplicate triplets.
func threeSum(_ nums: [Int]) -> [[Int]] {
    let snums = nums.sorted()
    var result: [[Int]] = []

    for i in 0..<snums.count{
      
        if i > 0 && snums[i] == snums[i-1]{
           continue
        }
        let x = snums[i]
        let t = -x
        var l = i + 1
        var r = snums.count-1
        while l < r {
            let sum = snums[l] + snums[r]
            if sum == t {
                result.append([x ,snums[l] , snums[r]])
                while l < r && snums[l] == snums[l+1]{
                  l += 1
                }
                while l < r && snums[r] == snums[r-1]{
                  r -= 1
                }
                l += 1
                r -= 1
            }else if sum < t {
                l += 1
            }else {
                r -= 1
            }
        }
    }
    return result
}
let nums = [-1,0,1,2,-1,-4]
print(threeSum(nums))



//[7:0]=9-2
//[2:1]=9-7
//[-2:2]=9-11
//[-6:3]=9-15

func miniMaxSum(arr: [Int]) -> Void {
    
    // Write your code here
    var sa = arr
    sa.sort()
let min = sa.dropLast().reduce(0){$0+$1}
let max = sa.dropFirst().reduce(0){$0+$1}
  print("\(min) \(max)")
}
var ttt = [1,3,5,7,9]
for i in (0..<ttt.count).reversed(){
    ttt[i] = ttt[i] * 2
}


miniMaxSum(arr: ttt)
var n = 3

print(n&1)
n=2
print(n&1)

for i in (0...n-1).reversed() {
    print(i)
 }

func diagonalDifference(arr: [[Int]]) -> Int {
    // Write your code here
   var ld = 0
   var rd = 0
   var row = arr.count - 1
    for k in 0..<arr.count{
       
        ld = ld + arr[k][k]
        print(row - k)
        rd = rd + arr[row - k][k]
    }
   return abs(ld - rd)
}


let arr = [[11 ,2 ,4],[4, 5 ,6],[10 ,8 ,-12]]
print(diagonalDifference(arr: arr))


//let a = [1,2,3,4,5]
//let s = a.reduce(0) { $0 + $1 }
//print(s)
Loging().exe()

class InterviewAsked{
    
    
    /* 2. Find unique strings even after changeing order from an array of string*/
    func findUniqueItemsFromArray(input:[String]){
        
        var uniqueItem : Set<String> = []
        var result = [String]()
        
        for item in input{
            let sortedItem = String(item.sorted())
            
            if !uniqueItem.contains(sortedItem){
                uniqueItem.insert(item)
                result.append(item)
            }
        }
        
        print(result)
    }
    
    /*5. Find the number of occurrences of a character in a String*/
    func findTheNumberOfOccurrencesOfACharacterIn(string str:String, char:Character) -> Int{
        
        var count = 0
        
        for ch in str where ch == char {
            
            count += 1
            
        }
        
        return count
    }
    
    /*6. How to find out if the given two strings are anagrams or not? */
    func findIsAnagramsOrNot(str1:String, str2:String) -> Bool{
        
        if str1.lowercased().sorted() == str2.lowercased().sorted(){
            return true
        }
        
        return false
    }
    
    /*7. Sort array items*/
    func bubbleSortTheArray<T:Comparable>(array:[T]) -> [T]{
        
        var sortedArray = array
        for i in 0..<sortedArray.count{
            
            for j in 0..<sortedArray.count-1{
                
                if sortedArray[j] > sortedArray[j+1]{
                    let temp = sortedArray[j]
                    sortedArray[j] = sortedArray[j+1]
                    sortedArray[j+1] = temp
                }
            }
        }
        
        return sortedArray
    }
    
    
    /*10. Sort array items*/
    func insertionSortTheArray<T:Comparable>(array:[T]) -> [T]{
        
        //1,3,2,4,5
        var sortedArray = array
        
        for i in 1..<sortedArray.count{
            
            var n = i
            
            while n>0 && (sortedArray[n-1] > sortedArray[n]) {
                
                let temp = sortedArray[n]
                sortedArray[n] = sortedArray[n-1]
                sortedArray[n-1] = temp
                n -= 1
            }
        }
        
        return sortedArray
    }
    
    /*8.Calculate the number of vowels and consonants in a String?*/
    func calculateNumberOfVowelAndConsonantsIn(str:String) -> (vowel:Int, consonants:Int){
        
        var vowelCount = 0
        var consonantCount = 0
        
        var vowelChars = ["a", "e", "i", "o", "u"]
        for char in str{
            if vowelChars.contains(String(char)){
                vowelCount += 1
            }
            else{
                consonantCount += 1
            }
        }
        
        return (vowelCount, consonantCount)
    }
    
    /*9. How do you get the matching elements in an integer array?*/
    func isElementMatchIn(arr:[Int], item:Int) -> Bool{
        
        if arr.contains(item){
            return true
        }
        
        return false
    }
    
    
    /*11. How do you reverse an array?*/
    func reverseAnArray<T:Comparable>(array:[T]) -> [T]{
        
        //[1,2,3]
        var reverse : [T] = [T]()
        for i in 0..<array.count{
            reverse.append(array[array.count-1-i])
        }
        
        return reverse
    }
    
    /*12. How would you swap two numbers without using a third variable?*/
    func swapTwoNumbersWithoutUsingThirdVariable(num1:Int, num2:Int) -> (Int, Int){
        
        var a = num1// 5
        var b = num2// 10
        
        a = a + b // a = 15
        b = a - b // b = 5
        a = a - b
        
        return (a, b)
    }
    
    /*13. Print a Fibonacci series using recursion?*/
    func printAFibonacciSeriesUsingRecursion(count:Int) -> [Int]{
        
        guard count > 0 else {
            return []
        }
        
        var fibonacciSeries = [0, 1] // Start with the first two numbers in the series
        
        while fibonacciSeries.count < count {
            let last = fibonacciSeries[fibonacciSeries.count - 1]
            let secondLast = fibonacciSeries[fibonacciSeries.count - 2]
            let nextNumber = last + secondLast
            fibonacciSeries.append(nextNumber)
        }
        
        return fibonacciSeries
    }
    
    /*14 Find Substrings with Unique Characters*/
    func findSubstringsWithUniqueCharacters(s:String) -> [String]{
        
        var subStrings : Set<String> = []
        
        for i in 0..<s.count{
            
            for j in i..<s.count{
                
                let subString = String(s[s.index(s.startIndex, offsetBy: i)...s.index(s.startIndex, offsetBy: j)])
                if Set(subString).count == subString.count{
                    subStrings.insert(subString)
                }
            }
        }
        
        return Array(subStrings)
    }
    
    /*15 Character Frequency Count*/
    func characterFrequencyCount(s:String){
        
        var occurance : [Character:Int] = [:]
        for item in s{
            occurance[item, default: 0] += 1
        }
        
        print(occurance)
        
    }
    
    /*16  Longest Substring Without Repeating Characters*/
    func  longestSubstringWithoutRepeatingCharacters(s:String) -> Int{//"shashi"
        
        var charIndex : [Character:Int] = [:]
        var maxLength = 0
        var start = 0
        
        for (i, char) in s.enumerated(){
            
            if let index = charIndex[char], index >= start{
                start = index + 1
            }
            
            charIndex[char] = i
            maxLength = max(maxLength, i-start+1)
        }
        
        return maxLength
    }
    
    /* 17 Find Missing Number */
    func findMissingNumber(arr:[Int]) -> Int{
        
        //[1,0,3 -> 2
        let n = arr.count
        let totalSum = n * (n+1)/2
        let arraySum = arr.reduce(0, +)
        return totalSum-arraySum
    }
    
    /*18 two Sum Problem*/
    func twoSumProblem(input:[Int], target:Int) -> (Int,Int)?{
        // [1,2,3,4] -> 5 5-1
        
        var dic : [Int:Int] = [:]
        
        for (index, num) in input.enumerated(){
            
            if let complimentIndex = dic[target-num]{
                return(complimentIndex, index)
            }
            
            dic[num] = index
            
        }
        
        return nil
        
    }
    
    /*19 Array Rotation*/
    func arrayRotation(_ arr:[Int], at:Int) -> [Int]{
        // [1,2,3,4,5,6,7]
        let rotation = at % arr.count
        return Array(arr[rotation..<arr.count] + arr[0..<rotation])
    }
    
    /*20. Merge Sorted Arrays*/
    func mergeSortedArrays(arr:[Int]){
        
    }
    
    /*21Find Duplicate Elements*/
    func findDuplicateElements(arr:[Int]) -> [Int]{
        
        //1,2,4,3,2
        var unique:Set<Int> = []
        var duplicateItems:Set<Int> = []
        
        for item in arr{
            
            if unique.contains(item){
                duplicateItems.insert(item)
            }
            else{
                unique.insert(item)
            }
        }
        
        return Array(duplicateItems)
    }
    
    // 22 and 23 assesment for Heady company
    /*22. Run loop encoding algorithim given string need "shahsi" -> "1s1h1a1h1s1i" -> reversed it "i1s1h1a1h1s1:ishahs"*/
    func runLoopEncodingAlgorthim(str:String) -> String{
        
        var token = str
        var repeatedString = ""
        
        var i = 0
        
        while i < str.count{
            
            let currentChar = str[str.index(str.startIndex, offsetBy: i)]
            var count = 1
            
            while i+1 < str.count && str[str.index(str.startIndex, offsetBy: i)] == str[str.index(str.startIndex, offsetBy: i+1)]{
                i += 1
                count += 1
            }
            
            repeatedString += "\(count)\(currentChar)"
            i += 1
        }
        
        let reversedToken = String(token.reversed())
        let reversedrepeatedString = String(repeatedString.reversed())
        
        return "\(reversedrepeatedString):\(reversedToken)"
    }
    
    /*23. write function for valid if braces starts and ends correctly */
    func isValidBraces(str:String) -> Bool{
        
        var flag = 0
        
        for char in str{
            
            if char == "(" {
                flag += 1
            } else if char == ")" {
                flag -= 1
            }
            
            if flag < 0{
                return false
            }
        }
        
        return flag == 0 ? true : false
        
    }
    
    /*24. Find number is prime or not*/
    func isPrimeNUmber(_ n: Int) -> Bool{
        
        if n<=1{
            return false
        }
        
        if n<=3{
            return true
        }
        
        if n%2==0 || n%3 == 0{
            return false
        }
        
        var i = 5
        while i*i <= n{
            if n%i==0 || n%(i+2)==0{
                return false
            }
        }
        
        return true
    }
    
    func findRandomChallange(){
        
        let random = Int.random(in: 0...24)
        print(random)
    }
    
    
}

let interview = InterviewAsked()
//print(interview.findRandomChallange())
print(interview.findRandomChallange())

