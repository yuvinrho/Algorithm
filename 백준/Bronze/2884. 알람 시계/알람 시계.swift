let time = readLine()!.split(separator: " ").map{ Int($0)! }
let hour = time[0]
let min = time[1]

if min < 45 {
    if hour == 0 {
        print(23, 60+min-45)
    }
    else {
        print(hour-1, 60+min-45)
    }
}
else {
    print(hour, min-45)
}