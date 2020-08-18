//
//  main.swift
//  ReverseInteger(7)
//
//  Created by Richard Cho on 2020-08-17.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

import Foundation

func reverse(_ x: Int) -> Int {
    let isMinus = x < 0
    let x = String(String(abs(x)).reversed())
    let result = isMinus ? -(Int(x)!) : Int(x)!
    guard result < Int32.max && result > Int32.min else { return 0 }
    return result
}
