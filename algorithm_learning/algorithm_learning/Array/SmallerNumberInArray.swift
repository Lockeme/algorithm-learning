//
//  SmallerNumberInArray.swift
//  algorithm_learning
//
//  Created by Locke on 2021/4/4.
//
//  1365. 有多少小于当前数字的数字

import Foundation

public class SmallerNumberInArray {
    class func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        let sortNums = nums.sorted(by: <)
        var result = [Int]()
        for i in nums {
            let small = sortNums.firstIndex(of: i) ?? 0
            result.append(small)
        }
        return result
    }
    
    class func smallerNumbersThanCurrentExcellent(_ nums: [Int]) -> [Int] {
        var freq = Array(repeating: 0, count: 101)
        for n in nums {
            freq[n] = freq[n] + 1
        }
        for i in 1..<101 {
            freq[i] += freq[i-1]
        }
        var res = Array(repeating: 0, count: nums.count)
        for i in 0..<res.count {
            let number = nums[i]
            res[i] = number > 0 ? freq[number-1] : 0
        }
        return res
    }
}
