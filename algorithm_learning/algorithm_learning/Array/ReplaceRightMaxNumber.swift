//
//  ReplaceRightMaxNumber.swift
//  algorithm_learning
//
//  Created by Locke on 2021/4/14.
//
//  1299. 将每个元素替换为右侧最大元素

import Foundation

public class ReplaceRightMaxNumber {
    class func replaceElements(_ arr: [Int]) -> [Int] {
        var result = [Int](repeating: -1, count: arr.count)
        //从后往前遍历
        for i in stride(from: arr.count - 2, through: 0, by: -1) {
            result[i] = max(arr[i + 1], result[i + 1])
        }
        return result
    }
    
    class func replacElementsExcellent(_ arr: [Int]) -> [Int] {
        //记录下右侧最大值下标，到达最大下标前都不用再计算
        var result = arr
        var maxIndex = 0
        for i in 0..<arr.count {
            if i < arr.count - 1 {
                if i < maxIndex {
                    result[i] = arr[maxIndex]
                }
                else {
                    var max = 0
                    for j in i + 1..<arr.count {
                        if arr[j] > max {
                            maxIndex = j
                            max = arr[j]
                        }
                    }
                    result[i] = max
                }
            }
            else {
                result[i] = -1;
            }
        }
        return result
    }
}
