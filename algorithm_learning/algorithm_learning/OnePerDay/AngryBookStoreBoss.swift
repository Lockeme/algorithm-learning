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
        //计算没有X的情况下的满意度最大值
        for index in 0..<grumpy.count {
            if grumpy[index] == 0 {
                satisfied += customers[index];
            }
        }
        var maxAdd = 0//有X时能加上的满意度最大值
        //从第0天开始不生气
        //从第1天开始不生气
        //从第grumpy.count - X天开始不生气
        //计算以上情况哪种情况下客人满意度最高
        let calmCount = grumpy.count - X
        for index in 0...calmCount{
            var add = 0//当前情况能加上的满意度
            let end = index + X
            for x in index..<end {
                if grumpy[x] == 1 {
                    //原本生气但使用了技能后挽回的客人满意度
                    add += customers[x]
                }
            }
            if add > maxAdd {
                //当前情况比以前的满意度都高
                maxAdd = add
            }
        }
        return satisfied + maxAdd
    }
    
    //速度最优解
    class func maxSatisfied_excellent(_ customers: [Int], _ grumpy: [Int], _ X: Int) -> Int {
        var res = 0
        var total = 0
        //计算没有X的情况下的满意度最大值
        for i in 0 ..< customers.count {
            let comparator = grumpy[i] == 0 ? 1 : 0
            total += customers[i] * comparator
        }
       
        for i in 0 ..< customers.count {
            //从第0天开始，先把因为生气流失的满意度加上
            //后面通过判断，如果不符合条件再减去
            if grumpy[i] == 1 {
                total += customers[i]
            }

            if i >= X - 1 {
                //从X-1天开始需要和上面加过的满意度比较
                res = max(total, res)

                //如果之前加过这天，那需要减掉
                if grumpy[i - (X - 1)] == 1 {
                    total -= customers[i - (X - 1)]
                }
            }
        }
        return res
    }
}
