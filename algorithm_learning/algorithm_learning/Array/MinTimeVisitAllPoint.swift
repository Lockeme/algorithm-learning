//
//  MinTimeVisitAllPoint.swift
//  algorithm_learning
//
//  Created by Locke on 2021/4/5.
//
//  1266. 访问所有点的最小时间

import Foundation

public class MinTimeVisitAllPoint {
    class func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
        var result = 0
        var prePoint = points.first!
        for p in points {
            let x = abs(p.first! - prePoint.first!),y = abs(p.last! - prePoint.last!)
            result += x > y ? x : y
            prePoint = p
        }
        return result
    }
}
