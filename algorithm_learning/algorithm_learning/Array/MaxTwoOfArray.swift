//
//  MaxTwoOfArray.swift
//  algorithm_learning
//
//  Created by Locke on 2021/4/15.
//
//  1464. 数组中两元素的最大乘积

import Foundation

public class MaxTwoOfArray {
    class func maxProduct(_ nums: [Int]) -> Int {
        var result = 0
        let sort = nums.sorted(by: >)
        result = (sort[0] - 1) * (sort[1] - 1)
        return result
    }
}
