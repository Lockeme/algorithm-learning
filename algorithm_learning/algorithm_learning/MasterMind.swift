//
//  MasterMind.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/14.
//
//  面试题 16.15 珠玑妙算

import Foundation

public class MasterMind {
    class func masterMind(_ solution: String, _ guess: String) -> [Int] {
        var solutionDic = [Character : Int]()
        let sArr = Array(solution),gArr = Array(guess)
        var ans = 0, falseAns = 0
        
        for c in sArr {
            let count = (solutionDic[c] ?? 0) + 1
            solutionDic[c] = count
        }
        for c in gArr {
            if solutionDic.keys.contains(c) && solutionDic[c]! > 0 {
                falseAns += 1
                let count = solutionDic[c]! - 1
                solutionDic[c] = count
            }
        }
        for i in 0..<solution.count {
            if sArr[i] == gArr[i] {
                ans += 1
            }
        }
        return [ans, falseAns - ans]
    }
}
