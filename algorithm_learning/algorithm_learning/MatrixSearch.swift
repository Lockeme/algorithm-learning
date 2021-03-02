//
//  MatrixSearch.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/2.
//
//  304.二维区域和检索 - 矩阵不可变
import Foundation

//我的解
public class MatrixSearch {
    
    var sums = [[Int]]()
    
    init(_ matrix: [[Int]]) {
        //计算前n项和，存到新数组中，方便sumRegion中计算
        for nums in matrix {
            let n = nums.count;
            var numSums = [Int](repeating: 0, count: n + 1);
            for index in 0..<nums.count {
                numSums[index + 1] = numSums[index] + nums[index];
            }
            sums.append(numSums)
        }
    }
    
    func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
        var result = 0
        for i in row1...row2 {
            let nums = sums[i]
            result += (nums[col2 + 1] - nums[col1])
        }
        return result
    }
}

//速度最快解
public class MatrixSearchExcellent {
    let dp: [[Int]]
    let rowCount: Int
    let colCount: Int
    
    init(_ matrix: [[Int]]) {
        let rowCount = matrix.count
        let colCount: Int
        if rowCount == 0 {
            colCount = 0
        } else {
            colCount = matrix[0].count
        }
        var tempDP = matrix
        if rowCount > 0 && colCount > 0 {
            tempDP[0][0] = matrix[0][0]
            for i in 1..<rowCount {
                tempDP[i][0] = matrix[i][0] + tempDP[i - 1][0]
            }
            for j in 1..<colCount {
                tempDP[0][j] = matrix[0][j] + tempDP[0][j - 1]
            }
            
            if rowCount > 1 && rowCount > 1 {
                for i in 1..<rowCount {
                    for j in 1..<colCount {
                        tempDP[i][j] = tempDP[i - 1][j] + tempDP[i][j - 1] - tempDP[i - 1][j - 1] + matrix[i][j]
                    }
                }
            }
        }
        self.dp = tempDP
        self.rowCount = rowCount
        self.colCount = colCount
    }
    
    func sumRegion(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int) -> Int {
        guard row2 < rowCount, col2 < colCount else { return 0 }
        if row1 == 0 && col1 == 0 {
            return dp[row2][col2]
        }
        
        if row1 == 0 {
            return dp[row2][col2] - dp[row2][col1 - 1]
        }
        
        if col1 == 0 {
            return dp[row2][col2] - dp[row1 - 1][col2]
        }
        
        return dp[row2][col2] - dp[row2][col1 - 1] - dp[row1 - 1][col2] + dp[row1 - 1][col1 - 1]
    }
}
