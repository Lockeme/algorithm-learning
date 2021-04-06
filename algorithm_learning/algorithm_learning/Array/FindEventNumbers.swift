//
//  FindEventNumbers.swift
//  algorithm_learning
//
//  Created by Locke on 2021/4/6.
//
//  1295. 统计位数为偶数的数字

import Foundation

public class FindEventNumbers {
    class func findNumbers(_ nums: [Int]) -> Int {
        var result = 0
        for i in nums {
            var temp = i
            while temp >= 100 {
                temp /= 100
            }
            if temp >= 10 {
                result += 1
            }
        }
        return result
    }
}
