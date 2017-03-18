//: Playground - noun: a place where people can play

import UIKit


class Node {
    let value: Int
    var next: Node?
    
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
}

let thirdNode = Node (value: 3, next: nil)
let secondNode = Node(value: 2, next: thirdNode)
let firstNode = Node(value: 1, next: secondNode)



func printList(head: Node?) {
    print("Printing out list of nodes")
    var currentNode = head
    
    while currentNode != nil {
        print(currentNode!.value)
        currentNode = currentNode?.next
    }
    
}

printList(head: firstNode)

/// 1->2->3->nil
/// nil<-1<-2<-3
func reverseList(head: Node?) -> Node? {
    
    var currentNode = head
    var prev: Node?
    var next: Node?
    
    while currentNode != nil {
        
        next = currentNode?.next
        currentNode?.next = prev
        print("Prev: \(prev?.value ?? -1), Current: \(currentNode?.value ?? -1), Next: \(next?.value ?? -1)")
        prev = currentNode
        currentNode = next
        
    }
    return prev;
}

let reversedList = reverseList(head: firstNode)

printList(head: reversedList)



