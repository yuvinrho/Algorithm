import Foundation
struct MinHeap {
    var minHeap: [Int] = []
    var heapSize = 0
    
    mutating func insert(_ element: Int) {
        if minHeap.isEmpty {
            minHeap.append(element)
            minHeap.append(element)
            heapSize += 1
            return
        }
        
        minHeap.append(element)
        heapSize += 1
        
        var index = heapSize
        var parent: Int = heapSize / 2
        
        while (minHeap[index] < minHeap[parent] && index > 1) {
            minHeap.swapAt(index, parent)
            index = parent
            parent = index / 2
        }
    }
    
    mutating func remove() -> Int {
        if heapSize < 1 {
            return 0
        }
        
        if heapSize == 1 {
            heapSize -= 1
            return minHeap.removeLast()
        }
        
        let removeElement = minHeap[1]
        minHeap[1] = minHeap.removeLast()
        heapSize -= 1
        
        var index = 1
        while(index <= heapSize) {
            let left = index * 2
            let right = index * 2 + 1
            var min = index
            
            if right <= heapSize {
                if minHeap[left] <= minHeap[right] && minHeap[index] > minHeap[left] {
                    min = left
                } else if minHeap[left] > minHeap[right] && minHeap[index] > minHeap[right] {
                    min = right
                }
            } else if left <= heapSize {
                if minHeap[index] > minHeap[left] {
                    min = left
                }
            }
            guard min != index else { break }
            minHeap.swapAt(index, min)
            index = min
        }
        return removeElement
    }
}

var minHeap = MinHeap()
let N = Int(readLine()!)!
for _ in 1...N {
    let input = Int(readLine()!)!
    input == 0 ? print(minHeap.remove()) : minHeap.insert(input)
}