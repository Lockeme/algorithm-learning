//
//  ValidMountainArray.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/22.
//
//  941.有效的山脉数组

import Foundation

public class ValidMountainArray {
    class func validMountainArray(_ arr: [Int]) -> Bool {
        guard arr.count >= 3 else {
            return false
        }
        let n = arr.count
        var left = 0, right = n - 1
        while left + 1 < n && arr[left] < arr[left + 1]  {
            left += 1
        }
        while right > 0 && arr[right] < arr[right - 1] {
            right -= 1
        }
        return left != 0 && right != n - 1 && left == right
    }
}
