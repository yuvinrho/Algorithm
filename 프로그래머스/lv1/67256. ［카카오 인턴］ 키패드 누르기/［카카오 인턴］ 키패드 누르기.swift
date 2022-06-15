import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
   var result = ""
    var leftHand: Int = -1
    var rightHand: Int = -1
    
    let dial: [Int: [Int]] = [
        1: [1, 1],
        2: [1, 2],
        3: [1, 3],
        4: [2, 1],
        5: [2, 2],
        6: [2, 3],
        7: [3, 1],
        8: [3, 2],
        9: [3, 3],
        0: [4, 2]
    ]
    
    for number in numbers {
        switch(number) {
        case 1, 4, 7:
            result += "L"
            leftHand = number
        case 3, 6, 9:
            result += "R"
            rightHand = number
        default:
            let numPosition = dial[number]!
            let leftHandPosition = dial[leftHand] ?? [4, 1]
            let rightHandPosition = dial[rightHand] ?? [4, 3]
            
            let leftHandDistance = abs(numPosition[0] - leftHandPosition[0]) + abs(numPosition[1] - leftHandPosition[1])
            let rightHandDistance = abs(numPosition[0] - rightHandPosition[0]) + abs(numPosition[1] - rightHandPosition[1])
            
            if leftHandDistance > rightHandDistance {
                result += "R"
                rightHand = number
            } else if leftHandDistance == rightHandDistance {
                if hand == "right" {
                    result += "R"
                    rightHand = number
                } else {
                    result += "L"
                    leftHand = number
                }
            } else {
                result += "L"
                leftHand = number
            }
        }
    }
    
    return result
}