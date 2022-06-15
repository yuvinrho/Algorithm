import Foundation

func solution(_ num:Int) -> Int {
    var count = 0
    var num = num
    while(count < 500) {
        if num == 1 {
            break
        }
        num = num % 2 == 0 ? num / 2 : num * 3 + 1
        count += 1
    }
    return num == 1 ? count : -1
}