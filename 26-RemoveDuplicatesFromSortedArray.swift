//
//  main.swift
//
//  Created by Richard Cho on 2021-02-18.
//

import Foundation

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
            guard nums.count > 0 else { return 0 }
            var count = nums.count, length = 1, lastNum = nums[0], i = 1
            
            while i < count {
                if lastNum == nums[i] {
                    nums.remove(at: i)
                    count -= 1
                } else {
                    lastNum = nums[i]
                    length += 1
                    i += 1
                }
            }
            return length
        }
}

