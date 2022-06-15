let val1 = Int(readLine()!)!
let val2 = Int(readLine()!)!

let a = val1 * (val2%10)
let b = val1 * (val2%100/10)
let c = val1 * (val2/100)
print(a, b , c, a+b*10+c*100, separator: "\n")