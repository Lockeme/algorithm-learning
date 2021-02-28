//
//  Monotonic.swift
//  algorithm_learning
//
//  Created by Locke on 2021/2/28.
//

import Foundation

public class Monotonic {
    class func isMonotonic(_ A: [Int]) -> Bool {
        //确定单调性
        var monotony = 0
        var temp = 0
        for (index, i) in A.enumerated() {
            if index == 0 {
                temp = i
                continue
            }
            if monotony == 0 {
                //先确定单调性
                if i > temp {
                    temp = i
                    monotony = 1//递增
                    continue
                }
                else if i < temp {
                    temp = i
                    monotony = 2//递减
                    continue
                }
                else {
                    continue
                }
            }
            if i < temp && monotony == 1 {
                return false
            }
            else if i > temp && monotony == 2 {
                return false
            }
            temp = i
        }
        return true
    }
    
    //速度最快解，执行用时608ms的解
    //。。。但是复制提交给LeetCode时，执行用时用了660ms，我的解答才644ms
    class func isMonotonic_excellent(_ A: [Int]) -> Bool {
        if A.count <= 1 {
            return true
        }
        
        var isZeng:Bool?
        
        for i in 0..<A.count - 1 {
            if A[i] != A[i + 1] {
                if isZeng == nil {
                    isZeng = A[i] < A[i + 1]
                } else {
                    if A[i] < A[i + 1] && !isZeng! || A[i] > A[i + 1] && isZeng! {
                        return false
                    }
                }
            }
        }
        
        return true
    }
}
