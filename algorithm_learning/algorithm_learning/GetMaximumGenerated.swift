//
//  GetMaximumGenerated.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/13.
//
//  1646.获取生成数组中的最大值

import Foundation

public class GetMaximumGenerated {
    class func getMaximumGenerated(_ n: Int) -> Int {
        if n < 2 {
            return n
        }
        var maxValue = 0
        var arr = [Int](repeating: 0, count: n + 1)
        for i in 0...n {
            if i < 2 {
                arr[i] = i
            }
            else {
                if i % 2 == 0 {
                    arr[i] = arr[i/2]
                }
                else {
                    arr[i] = arr[(i+1)/2] + arr[(i-1)/2]
                }
            }
            maxValue = max(maxValue,arr[i])
        }
        return maxValue
    }
}
