//
//  XOROperationInArray.swift
//  algorithm_learning
//
//  Created by Locke on 2021/4/1.
//
//  1486. 数组异或操作

import Foundation

public class XOROperationInArray {
    class func xorOperation(_ n: Int, _ start: Int) -> Int {
        var result = 0
        for i in 0..<n {
            result ^= start + i * 2
        }
        return result
    }
}
