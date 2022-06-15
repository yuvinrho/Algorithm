import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var result: [Int] = []
    var songs: [(Int,String, Int)] = []
    var genresTotal: [String: Int] = [:]
    
    for (i, (genre, play)) in zip(genres, plays).enumerated() {
        songs.append((i, genre, play))
        if genresTotal[genre] == nil {
            genresTotal[genre] = play
        } else {
            genresTotal[genre]! += play
        }
    }
    
    songs = songs.sorted { $0.2 == $1.2 ? $0.0 < $1.0 : $0.2 > $1.2 }
    
    let genres = genresTotal.sorted { $0.value == $1.value ? $0.key < $1.key : $0.value > $1.value }.map { $0.key }
    
    for genre in genres {
        result += songs.filter { $0.1 == genre }.prefix(2).map { $0.0 }
    }
        
    return result
}