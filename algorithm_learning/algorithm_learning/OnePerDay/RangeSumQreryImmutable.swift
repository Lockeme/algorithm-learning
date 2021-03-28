//
//  RangeSumQreryImmutable.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/1.
//
//  303.区域和检索 - 数组不可变

import Foundation

class NumArray {

    var sums: [Int]
    
    init(_ nums: [Int]) {
        let n = nums.count;
        sums = [Int](repeating: 0, count: n + 1);
        for index in 0..<nums.count {
            sums[index + 1] = sums[index] + nums[index];
        }
    }
    
    func sumRange(_ i: Int, _ j: Int) -> Int {
        return sums[j + 1] - sums[i]
    }
}
