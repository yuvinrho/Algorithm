let nums = readLine()!.split(separator: " ").map{ Int($0)! }
print(nums[0] == nums[1] ? "==" : (nums[0] > nums[1] ? ">" : "<"))