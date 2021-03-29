//
//  ShuffleTheArray.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/29.
//
//  1470. 重新排列数组

import Foundation

public class ShuffleTheArray{
    class func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        let count = nums.count
        var result = [Int](repeating: 0, count: count)
        for i in 0..<count / 2 {
            result[i * 2] = nums[i]
            result[i * 2 + 1] = nums[i + n]
        }
        return result
    }
}
