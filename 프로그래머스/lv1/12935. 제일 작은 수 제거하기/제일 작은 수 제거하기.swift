import Foundation
func solution(_ arr:[Int]) -> [Int] {
    var arr = arr
    arr.remove(at: arr.firstIndex(of: arr.min()!)!)
    return arr.isEmpty ? [-1] : arr
}