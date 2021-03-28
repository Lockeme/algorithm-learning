//
//  CheckDoubleExist.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/19.
//
//  1346.检查整数及其两倍数是否存在

import Foundation

public class CheckDoubleExist {
    class func checkIfExist(_ arr: [Int]) -> Bool {
        var dic = [Int : Int]()
        for i in arr {
            let count = (dic[i] ?? 0) + 1
            dic[i] = count
        }
        for i in arr {
            if i == 0 && dic[i] ?? 0 >= 2 {
                return true
            }
            else if i != 0 && dic[i * 2] ?? 0 >= 1 {
                return true
            }
        }
        return false
    }
    
    class func checkIfExistExcellent(_ arr: [Int]) -> Bool {
        if arr.count < 2 {
            return false
        }
        var narr : [String:Int] = [:]
        for item in arr {
            if narr[String(item)] != nil && narr[String(item)] != item {
                return true
            }
            if narr[String(item * 2)] != nil && narr[String(item)] != item {
                return true
            }
            if narr[String(item)] == 0 {
                return true
            }
            narr[String(item)] = item
            narr[String(item * 2)] = item
        }
        return false
    }
}
