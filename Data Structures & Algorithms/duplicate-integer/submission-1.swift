class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var hashMap: [Int:Int] = [:]
        for num in nums {
            if hashMap[num] != nil { return true }
            hashMap[num, default: 0] = 1
        }
        
        return false
    }
}
