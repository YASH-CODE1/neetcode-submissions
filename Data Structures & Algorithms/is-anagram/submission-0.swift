class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard Array(s).count == Array(t).count else { return false }
        var dict: [Character:Int] = [:]
        for char in s {
            dict[char, default:0] += 1 
        }
        for char in t {
            dict[char, default:0] -= 1
        }

        return dict.values.allSatisfy { $0 == 0 }
        
    }
}
