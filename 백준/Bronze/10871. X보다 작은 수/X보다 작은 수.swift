let inputInt = readLine()!.split(separator: " ").map { Int($0)! }

let count = inputInt[0]
let max = inputInt[1]

let numbers = readLine()!.split(separator: " ").map { Int($0)! }

for number in numbers {
    if number < max { print(number, terminator: " ") }
}
print("")
