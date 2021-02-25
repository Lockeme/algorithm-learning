//
//  TransposeMatrix.swift
//  算法自测
//
//  Created by Locke on 2021/2/25.
//
//  867.转置矩阵

import Foundation

public class TransposeMatrix {
    //我的解
    class func transpose(_ matrix: [[Int]]) -> [[Int]] {
        var result = [[Int]]()
        for i in 0..<matrix.count {
            let array = matrix[i]
            for j in 0..<array.count {
                var tempArr : [Int]
                if result.count <= j {
                    tempArr = [Int]()
                    result.append(tempArr)
                }
                else{
                    tempArr = result[j]
                }
                tempArr.append(array[j])
                result[j] = tempArr
            }
        }
        return result
    }
    
    //速度最优解
    class func transpose_excellent(_ matrix: [[Int]]) -> [[Int]] {
        let row = matrix.count
        let column = matrix[0].count
        var result = [[Int]](repeating: [Int](repeating: 0, count: row), count: column)
        for i in 0..<row {
            for j in 0..<column {
                result[j][i] = matrix[i][j]
            }
        }
        return result
    }
}
