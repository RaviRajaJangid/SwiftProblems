//: [Previous](@previous)
import Foundation

class Holder {
    var key: Int
    var value: Int = 0
    init(key: Int, value: Int = 0) {
        self.key = key
        self.value = value
    }
}

func topKFrequent2(_ nums: [Int], _ k: Int) -> [Int] {
    var dict: [Int: Int] = [:]
     var ke:[Int] = []//Array(repeating: 0, count: k)
      for num in nums {
          dict[num, default:0] += 1
      }
    var holder: [Holder] = []
    for item in dict {
        holder.append(Holder(key: item.key, value: item.value))
    }
    holder.sort { h1, h2 in   //In worst case sorting time complexity will be O(n log n)
        h1.value > h2.value
    }
    for i in 0..<k {
        ke.append(holder[i].key)
    }
  return ke
}
func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
    var dic: [Int: Int] = [:]
     var ke:[Int] = []//Array(repeating: 0, count: k)
      for num in nums {
          dic[num, default:0] += 1
      }
    var array = [Int]()
    for (key,v) in dic {
        array.append(v)
    }
    array.sort { a, b in
        a > b
    }
    for i in 0..<k {
        for j in dic {
            if j.value == array[i] {
                ke.append( j.key)
            }
        }
     }
  return ke
}
let ar = [1,1,1,2,2,3,2,3,2,2]
print(topKFrequent2(ar, 2))
//slow fast pointer approach
/*
 Definition for singly-linked list.
*/
  public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() {
          self.val = 0; self.next = nil;
      }
      public init(_ val: Int) {
          self.val = val; self.next = nil;
      }
      public init(_ val: Int, _ next: ListNode?) {
          self.val = val; self.next = next;
      }
  }
var n1 = ListNode(1)
let n2 = ListNode(2)
let n3 = ListNode(3)
let n4 = ListNode(4)
let n5 = ListNode(5)
let n6 = ListNode(6)

let head: ListNode = n1
n1.next = n2
n2.next = n3
n3.next = n4
n4.next = n5
n5.next = n6

//find out mid of singly linked list
func midOfLinkedList(head: ListNode) -> Int {
    var slow: ListNode? = head
    var fast: ListNode? = head
    
    while fast?.next != nil  {
        slow = slow?.next
        fast = fast?.next?.next
    }
    return slow?.val ?? 0
}
print("Mid of Linked List = \(midOfLinkedList(head: head))")

n6.next = head //this will make the LL circular

func isLLCircular(head: ListNode) -> Bool {
    
    var slow: ListNode? = head
    var fast: ListNode? = head
    var c = 0
    while fast?.next != nil  {
        slow = slow?.next
        fast = fast?.next?.next
        c += 1
        if slow === fast {
            print("Total No of nodes = \(c)")
            return true
        }
    }
    print("Total No of nodes = \(c)")
    return false
}

print("Is The given Linked List Circular = \(isLLCircular(head: head))")

//slow fast pointer approach
func midOf(array: [Int]) -> Int {
    var p2: Int = 0
    
    for p0 in array {
        p2 = p0*2
        print(p0)
        
        if p2 == array.count {
            return array[p0]
        }
        if p2 > array.count {
            return array[p0-1]
        }
    }
    return 0
}
let queue: [Int] = [1,2,3,4,5]
print("Mid = \(midOf(array: queue))")

//even +1
//odd -1


//: [Next](@next)
