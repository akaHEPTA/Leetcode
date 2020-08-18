//
//  main.swift
//  TwoSum(1)
//
//  Created by Richard Cho on 2020-08-17.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var results: [Int] = []
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            if nums[i] + nums[j] == target {
                results.append(i)
                results.append(j)
            }
        }
    }
    return results
}
