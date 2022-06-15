func solution(_ a:Int, _ b:Int) -> String {
    let month = [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30]
    let days = ["THU", "FRI", "SAT", "SUN", "MON", "TUE", "WED"]
    let totalDay = month[0..<a].reduce(0, +) + b
    
    return days[totalDay % 7]
}