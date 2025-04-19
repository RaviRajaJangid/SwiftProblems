//
//  Helper.swift
//  
//
//  Created by Ravi Raja Jangid on 28/03/25.
//
import Foundation

public class P2 {
    public init(){
//        print(twoSum([7,2,11,15], 9))
        let nums = [-1,0,1,2,-1,-4]
        print(threeSum(nums))
    }
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
    
}
