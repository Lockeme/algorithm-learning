//
//  CountingBits.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/3.
//
//  338.比特位计数

import Foundation

public class CountBits {
    //动态规划
    class func countBits(_ num: Int) -> [Int] {
        var bits = [Int](repeating: 0, count: num + 1)
        var highBit = 0;
        for i in 1...num {
            if ((i & (i - 1)) == 0) {
                highBit = i;
            }
            bits[i] = bits[i - highBit] + 1;
        }
        return bits;
    }
    
    //速度最快解
    class func countBitsExcellent(_ num: Int) -> [Int] {
        var ans = [Int](repeating: 0, count: num + 1)
        var i = 0, b = 1
        while b <= num {
            while i < b && i + b <= num {
                ans[i + b] = ans[i] + 1
                i += 1
            }
            i = 0
            b <<= 1
        }
        return ans
    }
}
