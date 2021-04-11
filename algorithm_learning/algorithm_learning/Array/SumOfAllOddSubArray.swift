//
//  SumOfAllOddSubArray.swift
//  algorithm_learning
//
//  Created by Locke on 2021/4/11.
//
//  1588. 所有奇数长度子数组的和

import Foundation

public class SumOfAllOddSubArray {
    class func sumOddLengthSubarrays(_ arr: [Int]) -> Int {
        var res = 0;
        for i in 0..<arr.count {
            //left：左边有几个选择 right：右边有几个选择
            let left = i + 1, right = arr.count - i
            //偶数个数字的选择方案
            let left_even = (left + 1) / 2, right_even = (right + 1) / 2
            //奇数个数字的选择方案
            let left_odd = left / 2, right_odd = right / 2;
            //最终和 += 出现次数 x arr[i]
            res += (left_even * right_even + left_odd * right_odd) * arr[i]
        }
        return res;
    }
}
