import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var sizes = sizes
    
    for i in sizes.indices {
        sizes[i] = sizes[i].sorted()
    }
    
    let maxWidth = sizes.map{ $0[0] }.max()
    let maxHight = sizes.map{ $0[1] }.max()
    
    return maxWidth! * maxHight!
}