//
//  KthMissingNumber.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/7.
//
//  1539.第k个缺失的正整数

import Foundation

public class KthMissingNumber {
    class func findKthPositive(_ arr: [Int], _ k: Int) -> Int {
        //count为标记的缺失数量，实时与k对比
        //num为count对应的缺失值
        var count = 0, num = 1
        for i in arr {
            while num < i {
                //存在缺失数，更新count和num
                count += 1
                if count == k {
                    return num
                }
                num += 1
            }
            //不存在缺失数（或已经更新了count和num），继续往下遍历
            num += 1
        }
        //缺失数不在数组内，那数组最大值 + k - 前面的缺失数量 = 第k个缺失的正整数
        //num - 1 为数组最大值，因为经过上面的计算最后会多加一次1
        return (num - 1) + k - count
    }
}
