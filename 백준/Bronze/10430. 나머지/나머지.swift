let nums = readLine()!.split(separator: " ").map{ Int($0)! }
let A = nums[0]
let B = nums[1]
let C = nums[2]
print((A+B)%C)
print(((A%C) + (B%C))%C)
print((A*B)%C)
print(((A%C) * (B%C))%C)