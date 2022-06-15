func solution(_ clothes:[[String]]) -> Int {
    let clothesTypes = Set(clothes.compactMap { $0.last })
    var clothesCount: [Int] = []
    for type in clothesTypes {
        clothesCount.append(clothes.filter { $0.last == type }.count + 1)
    }
    print(clothesCount)
    
    return clothesCount.reduce(1, *) - 1
}