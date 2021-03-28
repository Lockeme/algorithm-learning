//
//  MissingNumber.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/18.
//
//  剑指Offer 53 - II. 0~n-1中缺失的数字

import Foundation

public class MissingNumber {
    class func missingNumber(_ nums: [Int]) -> Int {
        //二分法查找，找出下标和值第一次对不上的值并返回
        guard nums.count > 1 else {
            return nums[0] == 0 ? 1 : 0
        }
        var count = nums.count / 2
        var left = 0, right = nums.count
        while true {
            if nums[count] == count {
                left = count
            }
            else if (nums[count] > count) {
                right = count
            }
            if left == right - 1 {
                return nums[left] == left ? right : left
            }
            count = (right - left) / 2 + left
        }
    }
}
