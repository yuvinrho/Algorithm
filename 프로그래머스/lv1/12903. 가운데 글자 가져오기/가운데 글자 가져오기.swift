func solution(_ s:String) -> String {
    return s.count % 2 == 0 ? String(Array(s)[s.count/2 - 1...s.count/2]) : String(Array(s)[s.count/2])
}