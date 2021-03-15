//
//  AddToArrayFormOfInt.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/15.
//
//  989.数组形式的整数加法

import Foundation

public class AddToArrayFormOfInt {
    class func addToArrayForm(_ A: [Int], _ K: Int) -> [Int] {
        //将K加到A的最后一位上
        let last = A.last! + K, count = A.count
        var tempA = A, cs = 0
        tempA[count - 1] = last
        //从后往前遍历，大于10就进位，cs用于记录进位的数
        for i in stride(from: count - 1, through: 0, by: -1) {
            let num = tempA[i]
            if num < 10 {
                //不需要进位了，退出循环
                break
            }
            let ys = num % 10//余数，进位后当前下标应该存的数字
            tempA[i] = ys
            cs = num / 10
            if i > 0 {
                //不是第一个元素，还能往前修改
                let temp = tempA[i - 1] + cs
                tempA[i - 1] = temp
            }
            else {
                //第一个元素，需要add新数字在数组最前面
                while cs >= 10 {
                    let ys = cs % 10
                    cs /= 10
                    tempA.insert(ys, at: 0)
                }
                tempA.insert(cs, at: 0)
            }
        }
        return tempA
    }
    
    class func addToArrayFormExcellent(_ A: [Int], _ K: Int) -> [Int] {
        guard K > 0 else {
            return A
        }
        var result: [Int] = A
        var carry: Int = K
        for i in 0..<A.count {
            //从最后一位开始往前遍历，计算进位
            let value: Int = A[A.count-1-i] + carry
            result[A.count-1-i] = value % 10
            carry = value / 10
            if carry == 0 {
                return result
            }
        }
        //还需要往数组最前面添加元素
        while carry > 0 {
            result.insert(carry % 10, at: 0)
            carry = carry / 10
        }
        return result
    }
}
