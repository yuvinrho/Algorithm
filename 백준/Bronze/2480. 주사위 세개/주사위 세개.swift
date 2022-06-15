let nums = readLine()!.split(separator: " ").map { Int($0)! }
if nums[0] == nums[1] && nums[0] == nums[2] {
    print(10000 + nums[0] * 1000)
}
else if nums[0] == nums[1] || nums[0] == nums[2] {
    print(1000 + nums[0] * 100)
}
else if nums[1] == nums[2] {
    print(1000 + nums[1] * 100)
}
else {
    print( nums.max()! * 100)
}