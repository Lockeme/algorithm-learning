//
//  FindHighestAltitude.swift
//  algorithm_learning
//
//  Created by Locke on 2021/4/8.
//
//  1732. 找到最高海拔

import Foundation

public class FindHighestAltitude {
    class func largestAltitude(_ gain: [Int]) -> Int {
        var sums = [Int](repeating: 0, count: gain.count + 1)
        var result = 0
        for i in 0..<gain.count {
            let s = sums[i] + gain[i]
            result = max(result, s)
            sums[i + 1] = s
        }
        return result
    }
    
    class func largestAltitudeExcellent(_ gain: [Int]) -> Int {
        var temp = 0, result = 0
        for i in gain {
            temp += i
            result = max(temp, result)
        }
        return result
    }
}
