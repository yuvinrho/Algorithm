import Foundation

struct Stack {
    var array:[Int] = []
    
    mutating func push(_ element: Int) {
        array.append(element)
    }
    
    mutating func pop() -> Int {
        return array.popLast() ?? -1
    }
    
    func size() -> Int {
        return array.count
    }
    
    func empty() -> Int {
        return  array.isEmpty ? 1 : 0
    }
    
    func top() -> Int {
        return array.last ?? -1
    }
}

var stack = Stack()

let num = Int(readLine()!)!

for _ in 1...num {
    let input = readLine()!.split(separator: " ").map { $0 }
    
    switch(input[0]) {
    case "push":
        stack.push(Int(input[1])!)
        
    case "top":
        print(stack.top())
    
    case "size":
        print(stack.size())
        
    case "empty":
        print(stack.empty())
    
    case "pop":
        print(stack.pop())
    
    default:
        continue
    }
}
