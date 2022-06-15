import Foundation
func solution(_ phone_number:String) -> String {
    return String(Array.init(repeating: "*", count: phone_number.count - 4) + String(phone_number.suffix(4)))
}