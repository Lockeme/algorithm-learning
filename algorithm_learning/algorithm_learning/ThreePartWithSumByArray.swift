//
//  ThreePartWithSumByArray.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/21.
//
//  1013. 将数组分成和相等的三个部分

import Foundation

public class ThreePartWithSumByArray {
    class func canThreePartsEqualSum(_ arr: [Int]) -> Bool {
        var sum = 0
        //求总和
        for i in arr {
            sum += i
        }
        //总和不能被3整除直接return false
        guard sum % 3 == 0 else {
            return false
        }
        //求每个部分的和
        let partNum = sum / 3
        //part为部分数
        //tempSum为临时和，用于计算
        //从第0项开始，第一次加到partNum则part+1，tempSum回到0，再从下一项开始重新计算
        var part = 0, tempSum = 0
        for i in arr {
            tempSum += i
            //出现3个部分以后，剩余的数全加起来不为0则return false
            if tempSum == partNum && part < 3 {
                part += 1
                tempSum = 0
            }
        }
        if part == 3 && tempSum == 0 {
            return true
        }
        return false
    }
    
    class func canThreePartsEqualSumExcellent(_ arr: [Int]) -> Bool {
        var nums = arr
        let N = arr.count
        //求前缀和
        for i in 1..<nums.count {
            nums[i] = nums[i] + nums[i - 1]
        }
        //最后一项就是总和
        //总和不能被3整除直接return false
        if nums[N - 1] % 3 != 0 {
            return false
        }
        //s = 每个部分的和
        let s = nums[N - 1] / 3
        //true1为前n项第一次加到s
        //true2为前n项第一次加到s * 2
        var true1 = false
        var true2 = false
        for i in 0..<N-1 {
            if !true1 && nums[i] == s {
                true1 = true
            } else if true1 && !true2 && nums[i] == 2 * s {
                true2 = true
            }
        }
        //true1和true2都为true时表示可以等分成3份
        return true1 && true2
    }
}
