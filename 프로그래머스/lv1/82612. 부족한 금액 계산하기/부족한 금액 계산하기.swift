import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var priceSum = 0
    
    for count in 1...count {
        priceSum += price * count
    }
    
    return Int64(money >= priceSum ? 0 : priceSum - money)
}