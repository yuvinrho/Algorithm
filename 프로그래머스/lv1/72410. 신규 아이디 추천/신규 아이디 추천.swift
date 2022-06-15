import Foundation

func solution(_ new_id:String) -> String {
    var new_id = new_id
        .lowercased()
        .replacingOccurrences(of: "[^a-z0-9-_.]", with: "", options: .regularExpression)
        .replacingOccurrences(of: #"\.{2,}"#, with: ".", options: .regularExpression)
        .trimmingCharacters(in: ["."])
    
    if new_id.isEmpty {
        new_id = "a"
    }
    
    if new_id.count > 15 {
        new_id = String(new_id.prefix(15))
        if new_id.last == "." {
            new_id.removeLast()
        }
    }
    while(new_id.count < 3) {
        new_id += String(new_id.last!)
    }
    
    return new_id
}