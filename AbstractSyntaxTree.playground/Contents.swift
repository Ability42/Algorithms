// Represent evaluation above in a tree
//          '-'
//         /   \
//       '+'    4
//       / \
//      42  3

class Node {
    var value: Float? // '+', '-', '*', '/'
    var operation: String?
    var leftChild: Node?
    var rightChild: Node?

    init(value: Float?, operation: String?, leftChild: Node?, rightChild: Node?) {
        self.value = value
        self.operation = operation
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
    
}

// Implement this algorithm to evaluate abstract syntax tree
func evaluate(node: Node) -> Float {
    if node.value != nil {
        return node.value!
    }
    
    switch node.operation! {
    case "+":
        return evaluate(node: node.leftChild!) + evaluate(node: node.rightChild!)
    case "-":
        return evaluate(node: node.leftChild!) - evaluate(node: node.rightChild!)
    case "*":
        return evaluate(node: node.leftChild!) * evaluate(node: node.rightChild!)
    case "/":
        return evaluate(node: node.leftChild!) / evaluate(node: node.rightChild!)
    default:
        return 0
    }
}



// Create AST from specific nodes
let node_3 = Node(value: 3, operation: nil, leftChild: nil, rightChild: nil)
let node_42 = Node(value: 42, operation: nil, leftChild: nil, rightChild: nil)

let node_multiple = Node(value: nil, operation: "+", leftChild: node_42, rightChild: node_3)

let node_4 = Node(value: 4, operation: nil, leftChild: nil, rightChild: nil)
let node_root = Node(value: nil, operation: "-", leftChild: node_multiple, rightChild: node_4)



evaluate(node: node_root)
evaluate(node: node_multiple)


