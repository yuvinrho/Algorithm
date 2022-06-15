while let input = readLine()  {
    let result = input.split(separator: " ").reduce(0) {
        Int(String($0))! + Int(String($1))!
    }
    print(result)
}
