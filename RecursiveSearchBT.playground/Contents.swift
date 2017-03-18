//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//1.        
//          10
//         /  \
//        5    14
//       /    /  \
//      1    42   12

//2.

class Node {
    let value: Int
    var leftChild: Node?
    var rightChild: Node?
    
    init(value: Int, leftChild: Node?, rightChild: Node?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
    
}

// Create nodes

// right branch from ROOT
let twelveNode = Node(value: 12, leftChild: nil, rightChild: nil)
let fourtyTwoNode = Node(value: 42, leftChild: nil, rightChild: nil)
let fourteenNode = Node(value: 14, leftChild: fourtyTwoNode, rightChild: twelveNode)

// left branch from ROOT
let oneNode = Node(value: 1, leftChild: nil, rightChild: nil)
let fiveNode = Node(value: 5, leftChild: oneNode, rightChild: nil)

// root
let rootNode = Node(value: 10, leftChild: fiveNode, rightChild: fourteenNode)

func search(node: Node?, searchValue: Int) -> Bool {
    
    if node == nil {
        return false
    }
    
    if node?.value == searchValue {
        return true
    } else if searchValue < node!.value {
        return search(node: node?.leftChild, searchValue: searchValue)
    } else {
        return search(node: node?.rightChild, searchValue: searchValue)
    }
    
}

search(node: rootNode, searchValue: 5)


// Efficiency
let list = [11, 5, 10, 42, 14, 1]
let index = list.index(where: {$0 == 42})
