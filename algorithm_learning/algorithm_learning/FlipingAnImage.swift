//
//  FlipingAnImage.swift
//  算法自测
//
//  Created by Locke on 2021/2/24.
//
//  832.翻转图像

import Foundation

public class FlipingAnImage {
    //我的解
    class func flipAndInvertImage(_ A: [[Int]]) -> [[Int]] {
        var finalArr = [[Int]]()
        for array in A {
            var tempArr = [Int]()
            for i in array.reversed() {
                if i == 0 {
                    tempArr.append(1)
                }
                else {
                    tempArr.append(0)
                }
            }
            finalArr.append(tempArr)
        }
        return finalArr
    }
    
    //速度最优解
    class func flipAndInvertImage_excellent(_ A: [[Int]]) -> [[Int]] {
        var final = [[Int]]()
        for array in A {
            var reserved : [Int] = array.reversed()
            for i in 0..<reserved.count {
                reserved[i] = reserved[i] == 0 ? 1 : 0
            }
            final.append(reserved)
        }
        return final
    }
}
