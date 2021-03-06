//
//  NumberOfEquivalentDominoPairs.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/6.
//
//  1128.等价多米诺骨牌对的数量

import Foundation

public class NumberOfEquivalentDominoPairs {
    class func numEquivDominoPairs(_ dominoes: [[Int]]) -> Int {
        var dic = [Set<Int> : Int]()
        //标记相同的多米诺骨牌出现次数
        for arr in dominoes {
            let set = Set(arr)
            let count = (dic[set] ?? 0) + 1
            dic[set] = count
        }
        //依次加起来，使用组合公式C(n,2)
        var result = 0
        for value in dic.values {
            if value > 1 {
                result += (value - 1) * value / 2
            }
        }
        return result
    }
    
    class func numEquivDominoPairsExcellent(_ dominoes: [[Int]]) -> Int {
        //创建一个长度为100的数组
        var num = [Int](repeating: 0, count: 100)
        var result = 0
        for arr in dominoes {
            //遍历骨牌数组，将每个骨牌组成一个2位数，数字小的放前面
            //例如(1,5)和(5,1)都是15
            //数组下标作为骨牌标记，对应值为出现次数
            let val = arr[0] < arr[1] ? arr[0] * 10 + arr[1] : arr[0] + arr[1] * 10
            //每出现一次就要加一次之前的数
            //因为2个相同为1对，3个相同为3对，4个相同为6对
            result += num[val]
            num[val] += 1
        }
        return result
    }
}
