//
//  NumberOfStudentDoingHomework.swift
//  algorithm_learning
//
//  Created by Locke on 2021/4/10.
//
//  1450. 在既定时间做作业的学生人数

import Foundation

public class NumberOfStudentDoingHomework {
    class func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
        var result = 0
        for i in 0..<startTime.count {
            if startTime[i] <= queryTime && endTime[i] >= queryTime{
                result += 1
            }
        }
        return result
    }
}
