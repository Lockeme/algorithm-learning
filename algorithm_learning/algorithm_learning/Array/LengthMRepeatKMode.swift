//
//  LengthMRepeatKMode.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/20.
//
//  1566. 重复至少 K 次且长度为 M 的模式

import Foundation

public class LengthMRepeatKMode {
    class func containsPattern(_ arr: [Int], _ m: Int, _ k: Int) -> Bool {
        let n = arr.count;
        //安全判断，m * k 大于数组数量时肯定不满足，直接return
        guard m * k <= n else {
            return false
        }
        //双重for循环暴力遍历
        //外层的for循环为改变模式左侧起点
        for i in 0...n - m * k {
            var count = 0
            //内层for循环为改变模式右侧终点
            for offset in 0..<m * k {
                if arr[i + offset] != arr[i + offset % m] {
                    break
                }
                count = offset + 1
            }
            if count == m * k {
                return true
            }
        }
        return false;
    }
}
