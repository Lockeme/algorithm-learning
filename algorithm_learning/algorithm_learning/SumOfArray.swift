//
//  SumOfArray.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/25.
//
//  1480.一维数组动态和

import Foundation

public class SumOfArray {
    class func runningSum(_ nums: [Int]) -> [Int] {
        var sums = [Int](repeating: 0, count: nums.count)
        sums[0] = nums[0]
        for i in 1..<nums.count {
            sums[i] = sums[i - 1] + nums[i]
        }
        return sums
    }
}
