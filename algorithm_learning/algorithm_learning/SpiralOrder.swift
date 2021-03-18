//
//  SpiralOrder.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/17.
//
//  剑指Offer 29.顺时针打印矩阵

import Foundation

public class SpiralOrder {
    class func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        guard matrix.count > 0 else {
            return []
        }
        //从外往里一层层添加到数组中
        let row = matrix.count, column = matrix[0].count
        var left = 0, right = column - 1, top = 0, bottom = row - 1
        var result = [Int](repeating: 0, count: row * column)
        var index = 0
        while left <= right && top <= bottom {
            //从左上到右上
            for i in left...right {
                result[index] = matrix[top][i]
                index += 1
            }
            if top < bottom {
                //从右上到右下
                for i in (top + 1)...bottom {
                    result[index] = matrix[i][right]
                    index += 1
                }
                if left < right {
                    //从右下到左下
                    for i in stride(from: right - 1, to: left, by: -1) {
                        result[index] = matrix[bottom][i]
                        index += 1
                    }
                    //从左下到左上
                    for i in stride(from: bottom, to: top, by: -1) {
                        result[index] = matrix[i][left]
                        index += 1
                    }
                }
            }
            
            left += 1
            right -= 1
            top += 1
            bottom -= 1
        }
        return result
    }
}
