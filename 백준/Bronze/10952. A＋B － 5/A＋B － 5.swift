while true {
    let result = readLine()!.split(separator: " ").reduce(0) {
        Int(String($0))! + Int(String($1))!
    }
    if result == 0 { break }
    print(result)
}