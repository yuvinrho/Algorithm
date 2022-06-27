import Foundation

while(true) {
    let input = readLine()!
    if input == "0" { break }
    input == String(input.reversed()) ? print("yes") : print("no")
}