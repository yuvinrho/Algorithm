import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var time = 0
    var passingTrucks: [Int] = Array.init(repeating: 0, count: bridge_length)
    var waitingTrucks = truck_weights
    var bridgeWeight = 0
    
    while !waitingTrucks.isEmpty {
        bridgeWeight -= passingTrucks.removeFirst()
        time += 1
        if bridgeWeight + waitingTrucks.first! > weight {
            passingTrucks.append(0)
        } else {
            bridgeWeight += waitingTrucks.first!
            passingTrucks.append(waitingTrucks.removeFirst())
        }
    }
    while !passingTrucks.isEmpty {
        passingTrucks.removeFirst()
        time += 1
    }
    return time
}