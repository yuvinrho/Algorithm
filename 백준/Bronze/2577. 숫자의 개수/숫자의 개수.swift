var number: Int = 1
for _ in 1...3 {
    number *= Int(readLine()!)!
}

let numberToString = String(number)

for number in 0...9 {
    print(numberToString.filter { $0 == Character("\(number)") }.count)
}
