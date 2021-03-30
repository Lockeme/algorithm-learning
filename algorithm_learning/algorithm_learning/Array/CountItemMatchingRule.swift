//
//  CountItemMatchingRule.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/30.
//
//  1773. 统计匹配检索规则的物品数量

import Foundation

public class CountItemMatchingRule {
    class func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
        var result = 0
        let i = ruleKey == "type" ? 0 : ruleKey == "color" ? 1 : 2;
        for item in items {
            if item[i] == ruleValue {
                result += 1
            }
        }
        return result
    }
}
