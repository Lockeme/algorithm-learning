//
//  CheckStraigntLine.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/16.
//
//  1232.缀点成线

import Foundation

public class CheckStraingtLine {
    class func checkStraightLine(_ coordinates: [[Int]]) -> Bool {
        //根据公式Ax+By+c=0
        //先将c平移到原点
        let deltaX = coordinates[0][0], deltaY = coordinates[0][1];
        let n = coordinates.count;
        var tempCoor = coordinates
        for i in 0..<n {
            tempCoor[i][0] -= deltaX;
            tempCoor[i][1] -= deltaY;
        }
        //此时tempCoor里的点如果是一条直线，则满足Ax+By=0
        let A = tempCoor[1][1], B = -tempCoor[1][0];
        for i in 2..<n {
            let x = tempCoor[i][0], y = tempCoor[i][1];
            if (A * x + B * y != 0) {
                return false;
            }
        }
        return true;
    }
}
