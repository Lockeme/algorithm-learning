//
//  AngryBookStoreBoss.swift
//  算法自测
//
//  Created by Locke on 2021/2/24.
//
//  1052.生气的书店老板

import Foundation

public class AngryBookStoreBoss {
    //我的解
    class func maxSatisfied(_ customers: [Int], _ grumpy: [Int], _ X: Int) -> Int {
        var satisfied = 0
        for index in 0..<grumpy.count {
            if grumpy[index] == 0 {
                satisfied += customers[index];
            }
        }
        var maxAdd = 0
        let calmCount = grumpy.count - X
        for index in 0...calmCount{
            var add = 0
            let end = index + X
            for x in index..<end {
                if grumpy[x] == 1 {
                    add += customers[x]
                }
            }
            if add > maxAdd {
                maxAdd = add
            }
        }
        return satisfied + maxAdd
    }
    
    //速度最优解
    class func maxSatisfied_excellent(_ customers: [Int], _ grumpy: [Int], _ X: Int) -> Int {
        var res = 0
        var total = 0
        for i in 0 ..< customers.count {
            let comparator = grumpy[i] == 0 ? 1 : 0
            total += customers[i] * comparator
        }
       
        for i in 0 ..< customers.count {
            // temparaly add this value
            // cuz originally when grumpy[i] == 1 we treat customers[i] as 0
            // if question said we treat it as -customers[i] here we need add 2 times
            if grumpy[i] == 1 {
                total += customers[i]
            }

            // This is where we begin to slide the window
            if i >= X - 1 {
                res = max(total, res)

                // minus the value if we temparaly added this before
                if grumpy[i - (X - 1)] == 1 {
                    total -= customers[i - (X - 1)]
                }
            }
        }
        return res
    }
}
