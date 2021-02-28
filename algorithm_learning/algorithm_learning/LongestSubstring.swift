//
//  LongestSubstring.swift
//  algorithm_learning
//
//  Created by Locke on 2021/2/27.
//
//  395.至少有K个重复字符的最长子串

import Foundation

public class LongestSubstring {
    //我的解
    //还没做出来
    class func longestSubstring(_ s: String, _ k: Int) -> Int {
        return 0
    }
    
    //速度最快解法
    class func longestSubstring_excellent(_ s: String, _ k: Int) -> Int {
        guard s.count > 0 else {
            return 0
        }
        
        guard k > 0 else {
            return s.count
        }
        
        var result = Int.min
        let sArray = s.map{ String($0) }
        
        func splitString(string: [String]) {
            guard string.count > 0 else {
                return
            }
            var memo = [String: Int]()
            for i in 0..<string.count {
                memo[string[i]] = memo[string[i], default:0] + 1
            }
            
            var candidates = [[String]]()
            var last = -1
            var i = 0
            while i < string.count  {
                if memo[string[i]]! < k {
                    if i <= last + 1 {
                        last = i
                        i += 1
                        continue
                    } else {
                        candidates.append(Array(string[last + 1..<i]))
                        last = i
                    }
                }
                i += 1
            }
            
            if last < string.count - 1{
                candidates.append(Array(string[last + 1..<string.count]))
            }
            
            if last == -1 {
                result = max(string.count, result)
                return
            }
            
            for c in candidates {
                splitString(string:c)
            }
        }
        
        splitString(string:sArray)
        return result == Int.min ? 0 : result
    }
}
