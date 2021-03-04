//
//  FindMajorityElement.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/4.
//
//  面试题17.10 主要元素

import Foundation

public class FindMajorityElement {
    //我的解
    class func majorityElement(_ nums: [Int]) -> Int {
        let half = nums.count / 2
        var map = [Int : Int]()
        for i in nums {
            let count = (map[i] ?? 0) + 1
            if count > half {
                return i
            }
            map[i] = count
        }
        return -1
    }
    
    //速度最快解
    class func majorityElementExcellent(_ nums: [Int]) -> Int {
        var current: Int = -1
        var vote: Int = 0
        for num in nums {
            if vote == 0 {
                current = num
                vote += 1
            } else {
                if current == num {
                    vote += 1
                } else {
                    vote -= 1
                }
            }
        }
        
        if vote > 0 {
            var temp: Int = 0
            for num in nums {
                if num == current {
                    temp += 1
                }
            }
            return temp > (nums.count / 2) ? current : -1
        }
        
        return -1
    }
}
