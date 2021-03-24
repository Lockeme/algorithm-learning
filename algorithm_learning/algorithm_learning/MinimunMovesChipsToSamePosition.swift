//
//  MinimunMovesChipsToSamePosition.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/24.
//
//  1217.玩筹码

import Foundation

public class MinimunMovesChipsToSamePosition {
    class func minCostToMoveChips(_ position: [Int]) -> Int {
        //d单数、s双数
        var d = 0, s = 0
        //由于单数->单数和双数->双数不用代价
        //所以只需判断单数多还是双数多，返回代价较少的那个就行
        for i in position {
            if i % 2 == 0 {
                s += 1
            }
            else {
                d += 1
            }
        }
        return min(s, d)
    }
}
