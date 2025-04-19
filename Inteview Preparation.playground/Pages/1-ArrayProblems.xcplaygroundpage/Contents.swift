//: [Previous](@previous)
import Cocoa

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    var hm: [Int:Int] = [:]
    for (i, n) in nums.enumerated() {
        let comp = target - nums[i]
        print(comp, n)
        if let index = hm[comp] {
            return [i, index]
        }else {
            hm[n] = i
        }
        print(hm)
    }
    return []
}

func threeSum(_ nums: [Int]) -> [[Int]] {
    var result: [[Int]] = []
    
    let sortedNums = nums.sorted()
    
    for i in 0..<sortedNums.count {
        var l = i + 1
        var r = nums.count - 1
        if i > 0 && sortedNums[i] == sortedNums[i-1] {
            continue //to ignore the duplicate
        }
        while l < r {
            let sum = sortedNums[i] + sortedNums[l] + sortedNums[r]
            if sum == 0 {
                result.append([sortedNums[i], sortedNums[l], sortedNums[r]])
                l += 1
                r -= 1
            }else if sum < 0 || (sortedNums[l] == sortedNums[l-1]){
                l += 1
            }
        }
    }
    return result
}


print(twoSum([7,2,11,15], 9))
let nums = [-1,0,1,2,-1,-4]
print(threeSum(nums))

/*    Problem Statement: Rotate an Array to the Left
 Objective:
 
 Given an array of integers and a number at, write a function to rotate the array to the left by at positions. The function should return a new array with the rotated elements while maintaining the original order.
 
 Constraints:
 
 The input array will have at least one element.
 The rotation value (at) can be greater than the length of the array.
 The function should handle edge cases efficiently.
 Function Signature:
 
 func rotateArray(array: [Int], at: Int) -> [Int]
 Input:
 
 An integer array ar of size n (1 ≤ n ≤ 10^5).
 An integer at representing the number of positions to rotate (0 ≤ at ≤ 10^9).
 Output:
 
 A new integer array with elements rotated to the left by at positions.
 Example 1:
 
 Input:
 
 ar = [1, 2, 3, 4, 5]
 at = 2
 Output:
 
 [3, 4, 5, 1, 2]
 Explanation:
 
 After rotating left by 2 positions, 1 and 2 move to the end.
 Example 2:
 
 Input:
 
 ar = [10, 20, 30, 40, 50]
 at = 7
 Output:
 
 [30, 40, 50, 10, 20]
 Explanation:
 
 7 % 5 = 2, so the array is effectively rotated by 2 positions.
 Edge Cases to Consider:
 
 Zero rotations (at = 0) → The array remains unchanged.
 Full rotations (at = array.count) → The array remains unchanged.
 Large at values (at > array.count) → The function should optimize using at % array.count.
 Expected Time Complexity:
 
 O(n), where n is the length of the array.
 The function should efficiently handle large inputs.
 */
///Function Logic
///    Step 1: Handle Large at Values
///    let r = at % array.count
///         The rotation value at could be larger than the array size.
///         Using at % array.count, we ensure r remains within the valid range.
///         Example:
///         If array.count = 5 and at = 7, then r = 7 % 5 = 2. (Effectively the same as rotating 2 positions.)
///   Step 2: Split and Rearrange the Array
///   let arr = Array(array[r..<array.count] + array[0..<r])
///   array[r..<array.count] → Takes elements from index r to the end.
///   array[0..<r] → Takes elements from the start up to index r-1.
///   Concatenating these two creates the rotated array.
///   Example Walkthrough
// Example 1:
//    let arr = [1, 2, 3, 4, 5]
//    let result = rotateArray(array: arr, at: 2)
//    Execution:
//r = 2 % 5 = 2
//array[r..<array.count] = array[2..<5] = [3, 4, 5]
//array[0..<r] = array[0..<2] = [1, 2]
//Concatenation: [3, 4, 5] + [1, 2] = [3, 4, 5, 1, 2]
//Output:
//    [3, 4, 5, 1, 2]
//    Example 2 (Edge Case)
//    let arr = [10, 20, 30, 40, 50]
//    let result = rotateArray(array: arr, at: 7)

//Execution:
//    r = 7 % 5 = 2
//    array[r..<array.count] = array[2..<5] = [30, 40, 50]
//    array[0..<r] = array[0..<2] = [10, 20]
//    Concatenation: [30, 40, 50] + [10, 20] = [30, 40, 50, 10, 20]
//Output:
//[30, 40, 50, 10, 20]

///Edge Cases to Consider
///Rotating by 0 (at = 0)
///No rotation, the array remains the same.
///Rotating by array size (at = array.count)
///r = array.count % array.count = 0, so no change in the array.
///Rotating by a value greater than array size
///at = 12 with array.count = 5 results in r = 12 % 5 = 2, equivalent to rotating by 2.

///let arr = [10, 20, 30, 40, 50]
///let result = rotateArray(array: arr, at: 7)

///Execution:

///r = 7 % 5 = 2
///array[r..<array.count] = array[2..<5] = [30, 40, 50]
///array[0..<r] = array[0..<2] = [10, 20]
///Concatenation: [30, 40, 50] + [10, 20] = [30, 40, 50, 10, 20]

public func rotateArrayLeft(array: [Int],at: Int)->[Int] {
    let r = at % array.count
    if r == 0 {
        return array
    }
    return Array(array[r..<array.count] + array[0..<r])
}

///Alternative Approach Using dropFirst and prefix
///dropFirst(r): Removes the first r elements.
///prefix(r): Takes the first r elements.
public func rotateArrayLetByDropFirstPrefix(array: [Int],at: Int)->[Int] {
    let r = at % array.count
    return Array(array.dropFirst(r) + array.prefix(r))
}
/* Problem Statement: Rotate an Array to the Right
Objective:

Given an array of integers and a number at, write a function to rotate the array to the right by at positions. The function should return a new array with the rotated elements while maintaining the original order.

Constraints:

The input array will have at least one element.
The rotation value (at) can be greater than the length of the array.
The function should handle edge cases efficiently.
Function Signature:

func rotateRightArray(ar: [Int], at: Int) -> [Int]
Input:

An integer array ar of size n (1 ≤ n ≤ 10^5).
An integer at representing the number of positions to rotate (0 ≤ at ≤ 10^9).
Output:

A new integer array with elements rotated to the right by at positions.
Example 1:

Input:

ar = [1, 2, 3, 4, 5]
at = 2
Output:

[4, 5, 1, 2, 3]
Explanation:

After rotating right by 2 positions, 4 and 5 move to the beginning.
Example 2:

Input:

ar = [10, 20, 30, 40, 50]
at = 7
Output:

[40, 50, 10, 20, 30]
Explanation:

7 % 5 = 2, so the array is effectively rotated by 2 positions to the right.
Edge Cases to Consider:

Zero rotations (at = 0) → The array remains unchanged.
Full rotations (at = ar.count) → The array remains unchanged.
Large at values (at > ar.count) → The function should optimize using at % ar.count.
Expected Time Complexity:

O(n), where n is the length of the array.
The function should efficiently handle large inputs.
*/
///Swift Implementation
public  func rotateArrayRight(ar: [Int], at: Int) -> [Int] {
    guard !ar.isEmpty else { return ar } // Handle empty array case
    
    let n = ar.count
    let r = at % n // Optimize rotation when at > n
    
    // Rearrange the array by taking the last 'r' elements and moving them to the front
    let rotatedArray = Array(ar[n - r..<n] + ar[0..<n - r])
    
    return rotatedArray
}
public func rotateArrayRightByDropFirstPrefix(array: [Int],at: Int)->[Int] {
    let r = at % array.count
    return Array(array.suffix(r) +  array.dropLast(r))
}

// Example Usage
//    let arr1 = [1, 2, 3, 4, 5]
//    print(rotateRightArray(ar: arr1, at: 2)) // Output: [4, 5, 1, 2, 3]

//    let arr2 = [10, 20, 30, 40, 50]
//    print(rotateRightArray(ar: arr2, at: 7)) // Output: [40, 50, 10, 20, 30]
/// Explanation
/// Optimize Rotation Count
/// Instead of rotating more than necessary, we compute r = at % ar.count.
/// Example: at = 7 for arr.count = 5 → r = 7 % 5 = 2.
/// Slice and Rearrange
/// ar[n - r..<n] → Takes the last r elements.
/// ar[0..<n - r] → Takes the first n - r elements.
/// Combining them creates the rotated array.
/// Edge Cases Covered
/// ✔ Empty Array → Returns the empty array.
/// ✔ Zero Rotations (at = 0) → No changes.
/// ✔ Full Rotations (at = ar.count) → No changes.
/// ✔ Large at values → Uses modulo to optimize performance.



    
    let arr1 = [1, 2, 3, 4, 5]
    print(rotateArrayRight(ar: arr1, at: 2)) // Output: [4, 5, 1, 2, 3]

    let arr2 = [10, 20, 30, 40, 50]
    print(rotateArrayRightByDropFirstPrefix(array: arr2, at: 7))


//: [Next](@next)
