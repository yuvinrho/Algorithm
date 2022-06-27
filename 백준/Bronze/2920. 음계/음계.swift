import Foundation

let numbers = readLine()!.split(separator: " ").map { Int($0)! }

func isAscending(_ numbers:[Int]) -> Bool {
    var prevNumber = numbers[0]
    for i in 1..<numbers.count {
        if prevNumber == numbers[i] - 1 {
            prevNumber = numbers[i]
            continue
        } else {
            return false
        }
    }
    return true
}

func isDescending(_ numbers:[Int]) -> Bool {
    var prevNumber = numbers[0]
    for i in 1..<numbers.count {
        if prevNumber == numbers[i] + 1 {
            prevNumber = numbers[i]
            continue
        } else {
            return false
        }
    }
    return true
}

if isAscending(numbers) { print("ascending"); exit(0) }
if isDescending(numbers) { print("descending"); exit(0) }
print("mixed")