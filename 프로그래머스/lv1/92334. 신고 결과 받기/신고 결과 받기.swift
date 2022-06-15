import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var idDictinary: [String: Int] = [:]
    var reportedUsers: [String: [String]] = [:]
    var result = [Int].init(repeating: 0, count: id_list.count)
    
    for (index, id) in id_list.enumerated() {
        idDictinary[id] = index
    }
    
    for reportString in Set(report) {
        let arr = reportString.split(separator: " ").map { String($0) }
        if reportedUsers[arr[1]] == nil {
            reportedUsers[arr[1]] = [arr[0]]
        } else {
            reportedUsers[arr[1]]! += [arr[0]]
        }
    }
    
    for (key, value) in reportedUsers {
        if value.count >= k {
            for i in value {
                result[idDictinary[i]!] += 1
            }
        }
        
    }
    
    return result
}