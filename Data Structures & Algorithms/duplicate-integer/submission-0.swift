class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var hashMap: [Int:Int] = [:]
        for num in nums {
              hashMap[num, default: 0] += 1
        }
        for num in nums {
            if hashMap[num] ?? 0 > 1 {
 return true
            }
        }
        return false
    }
}
