let inputNumber = Int(readLine()!)!
var newNumber = inputNumber
var cycle = 0

while true {
    let tens = newNumber / 10
    let units = newNumber % 10
    let sum = tens + units
    newNumber = units * 10 + sum % 10
    cycle = cycle + 1
    
    if newNumber == inputNumber {
        print(cycle)
        break
    }
}