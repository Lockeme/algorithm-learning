//
//  CountNegativeNumbers.swift
//  algorithm_learning
//
//  Created by Locke on 2021/4/16.
//
//  1351. 统计有序矩阵中的负数

import Foundation

public class CountNegativeNumbers{
    class func countNegatives(_ grid: [[Int]]) -> Int {
        var result = 0
        for arr in grid {
            for i in 0..<arr.count {
                if arr[i] < 0 {
                    result += arr.count - i
                    break
                }
            }
        }
        return result
    }
}
