//
//  MatrixDiagonalSum.swift
//  algorithm_learning
//
//  Created by Locke on 2021/4/7.
//
//  1572. 矩阵对角线元素的和

import Foundation

public class MatrixDiagonalSum {
    class func diagonalSum(_ mat: [[Int]]) -> Int {
        var result = 0
        for i in 0..<mat.count {
            for j in 0..<mat.count {
                if i == j || i + j == mat.count - 1 {
                    result += mat[i][j]
                }
            }
        }
        return result
    }
}
