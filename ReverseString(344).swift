//
//  ReverseString(344).swift
//  
//
//  Created by Richard Cho on 2020-08-28.
//

import Foundation

class Solution {
    func reverseString(_ s: inout [Character]) {
        var left = 0, right = s.count - 1
        while(left < right) {
            let temp = s[left]
            s[left] = s[right]
            s[right] = temp
            left += 1
            right -= 1
        }
    }
}
