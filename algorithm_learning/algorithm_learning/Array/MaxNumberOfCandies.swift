//
//  MaxNumberOfCandies.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/28.
//
//  1431. 拥有最多糖果的孩子

import Foundation

public class MaxNumberOfCandies {
    class func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
        var maxCandies = 0
        for c in candies {
            maxCandies = max(c, maxCandies)
        }
        var result = [Bool]()
        for c in candies {
            result.append(c + extraCandies >= maxCandies)
        }
        return result
    }
}
