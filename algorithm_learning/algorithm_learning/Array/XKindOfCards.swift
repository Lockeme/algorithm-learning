//
//  XKindOfCards.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/23.
//
//  914.卡牌分组

import Foundation

public class XKindOfCards {
    class func hasGroupsSizeX(_ deck: [Int]) -> Bool {
        var arr = [Int](repeating: 0, count: 10000)
        for i in deck {
            arr[i] += 1
        }
        var g = -1
        for i in arr {
            if i > 0 {
                if g == -1 {
                    g = i
                }
                else {
                    g = gcd(g, i)
                }
            }
        }
        return g >= 2
    }

    //求最大公约数
    class func gcd(_ x: Int,_ y: Int) -> Int{
        return x == 0 ? y : gcd(y % x, x)
    }
    
//    class func hasGroupsSizeX(_ deck: [Int]) -> Bool {
//        if deck.isEmpty || deck.count == 1 {
//            return false
//        }
//        var dic: [Int: Int] = [:]
//        for num in deck {
//            let value = dic[num]
//            dic[num] = value == nil ? 1 : value! + 1
//        }
//        var nums = -1
//        for key in dic.keys {
//            if nums == -1 {
//                nums = dic[key]!
//            } else {
//                let gcdValue = gcd(a: nums, b: dic[key]!)
//                if gcdValue < 2 {
//                    return false
//                } else {
//                    nums = gcdValue
//                }
//            }
//        }
//        return true
//    }
//
//    class func gcd(a: Int, b: Int) -> Int {
//        if a == 0 || b == 0 {
//            return a == 0 ? b : a
//        }
//        if a == b {
//            return a
//        }
//        return gcd(a: b, b: a % b)
//    }
}
