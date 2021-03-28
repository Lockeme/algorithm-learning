//
//  RichestCustomerWealth.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/26.
//
//  1672. 最富有客户的资产总量

import Foundation

public class RichestCustomerWealth {
    class func maximumWealth(_ accounts: [[Int]]) -> Int {
        var maxW = 0
        for wealth in accounts {
            var sum = 0
            for i in wealth {
                sum += i
            }
            maxW = max(sum, maxW)
        }
        return maxW
    }
}
