//
//  main.swift
//  PalindromeNumber(9)
//
//  Created by Richard Cho on 2020-08-17.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

import Foundation

func isPalindrome(_ x: Int) -> Bool {
    guard x >= 0 else { return false }
    return String(x) == String(String(x).reversed())
}

