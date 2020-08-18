//
//  main.swift
//  DecodeWays(91)
//
//  Created by Richard Cho on 2020-08-17.
//  Copyright © 2020 Richard Cho. All rights reserved.
//

import Foundation

func numDecodings(_ s: String) -> Int {
    guard !s.isEmpty else { return 0 }
    
    let s = s.compactMap({ Int(String($0)) })
    var d = [Int](repeating: 0, count: s.count)

    d[0] = (s[0] != 0) ? 1 : 0
    
    for i in 1..<s.count {
        let crt = s[i]
        let prev = s[i - 1]
        if 1 <= crt && crt <= 9 { d[i] = d[i - 1] }
        if (prev == 1 && 0 <= crt && crt <= 9) || (prev == 2 && 0 <= crt && crt <= 6) { d[i] += (i >= 2) ? d[i - 2] : 1 }
    }
    
    return d[s.count - 1]
}
