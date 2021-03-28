//
//  BinaryPrefixDivisibleBy5.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/12.
//
//  1018.可被5整除的二进制前缀

import Foundation

public class BinaryPrefixDivisibleBy5 {
    class func prefixesDivBy5(_ A: [Int]) -> [Bool] {
        var result = [Bool](repeating: false, count: A.count)
        var count = 0
        for (index, i) in A.enumerated() {
            count *= 2
            count += i
            count %= 5
            result[index] = count % 5 == 0
        }
        return result
    }
}
