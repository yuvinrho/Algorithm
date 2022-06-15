func solution(_ a:Int, _ b:Int) -> Int64 {
    var a = a
    var b = b    
    if a > b { swap(&a, &b) }
    
    return Int64((a...b).reduce(0, +))
}