//
//  NumbersOfGoodPairs.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/27.
//
//  1512. 好数对的数目

import Foundation

public class NumberOfGoodPairs {
    class func numIdenticalPairs(_ nums: [Int]) -> Int {
        var dic = [Int : Int]()
        for i in nums {
            let count = (dic[i] ?? 0) + 1
            dic[i] = count
        }
        var result = 0
        for i in dic.values {
            if i >= 2 {
                result += i * (i - 1) / 2
            }
        }
        return result
    }
}
