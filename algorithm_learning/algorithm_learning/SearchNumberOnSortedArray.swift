//
//  SearchNumberOnSortedArray.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/10.
//
//  剑指offer 53.在排序数组中查找数字

import Foundation

public class SearchNumOnArray {
    class func search(_ nums: [Int], _ target: Int) -> Int {
        // 利用排序数组这个点，找到target第一次出现的index，开始往后遍历，直到下一个不是target的数跳出循环
        let start = nums.firstIndex(of: target) ?? -1
        if start == -1 {
            return 0
        }
        var count = 0
        for i in start..<nums.count {
            if nums[i] == target {
                count += 1
            }
            else {
                break
            }
        }
        return count
    }
    
    //二分法查找找出target左起始位置和右结束位置
    class func searchExcellent(_ nums: [Int], _ target: Int) -> Int {
        if nums.count == 0 {
            return 0
        }
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let mid = left + (right - left) / 2
            let value = nums[mid]
            if target == value {
                right = mid - 1
            }else if target < value{
                right = mid - 1
            }else{
                left = mid + 1
            }
        }
        let leftBound = left
        left = 0
        right = nums.count - 1
        while left <= right {
            let mid = left + (right - left) / 2
            let value = nums[mid]
            if target == value {
                left = mid + 1
            }else if target < value{
                right = mid - 1
            }else{
                left = mid + 1
            }
        }
        let rightBound = right
        if leftBound <= rightBound {
            return rightBound - leftBound + 1
        }else{
            return 0
        }
    }
}
