let time = readLine()!.split(separator: " ").map { Int($0)! }
var hour : Int = time[0]
var min : Int = time[1]
let timer = Int(readLine()!)!

if (min + timer) > 59 {
    hour = hour + ((min + timer) / 60)
    if hour > 23 {
        hour = hour - 24
    }
    print(hour, ((min + timer) % 60))
}
else {
    print(hour, min + timer)
}