//
//  TargetArrayInOrder.swift
//  algorithm_learning
//
//  Created by Locke on 2021/4/3.
//
//  1389. 按既定顺序创建目标数组

import Foundation

public class TargetArrayInOrder {
    class func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
        let count = index.count
        var result = [Int](repeating: 0, count: count)
        for i in 0..<count{
            result.insert(nums[i], at: index[i])
            result.removeLast()
        }
        return result
    }
}
