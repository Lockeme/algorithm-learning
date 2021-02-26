//
//  FindNumOfValidWords.swift
//  algorithm_learning
//
//  Created by Locke on 2021/2/26.
//
//  1178.猜字谜

import Foundation

public class FindNumOfValidWords {
    //暴力解法，超时
    //遍历每个puzzle和word作对比
    class func findNumOfValidWords(_ words: [String], _ puzzles: [String]) -> [Int] {
        var result = [Int]()
        for puzzle in puzzles {
            let firstChar = puzzle.prefix(1)
            var count = 0
            for word in words {
                var contain = true
                let chars = Array(word)
                for c in chars {
                    if puzzle.contains(c) == false {
                        contain = false
                        break
                    }
                }
                if contain && chars.contains(Array(firstChar)[0]) {
                    count += 1
                }
            }
            result.append(count)
        }
        return result
    }
    
    //改良解法
    class func findNumOfValidWords_improve(_ words: [String], _ puzzles: [String]) -> [Int] {
        //看完题解，解法就是状态压缩+枚举子集
        //计算'a'的ASCII码值
//        var aNumber:UInt32 = 0
//        for aCode in "a".unicodeScalars {
//            aNumber = aCode.value;
//        }
        //不算了，写死更快
        let aNumber:UInt32 = 97
        //遍历一次words，转换后存到字典中
        //key为转换后的值，value为出现次数
        var wDic = [Int : Int]()
        for w in words {
            let wValue = self.intStateValueWithString(w, aNumber)
            let count = (wDic[wValue] ?? 0) + 1
            wDic[wValue] = count
        }
        //声明存放结果的数组
        var result = [Int]()
        //遍历谜面
        for p in puzzles {
            //存放可作为谜底的word数
            var count = 0
            //谜面状态压缩
            let pValue = self.intStateValueWithString(p, aNumber)
            //subset为压缩后的值的子集，从自身开始（自己也是自己的子集）
            var subset = pValue
            //算谜面第一个字符对应的ASCII码
            let firstChar = Array(p)[0]
            let firstValue = firstChar.unicodeScalars[firstChar.unicodeScalars.startIndex].value
            repeat {
                //判断子集是否包含谜面首字符，通过与上子集计算
                let s = (1 << (firstValue - aNumber)) & subset;
                if (s > 0) {
                    //子集包含该谜面首字符，符合要求
                    //加上子集在words里出现的次数，如果words里没有这个值，就等于加了个寂寞
                    count += wDic[subset] ?? 0;
                }
                //换下一个子集继续循环
                subset = (subset - 1) & pValue;
            }while subset != pValue
            //加上这个谜面的结果
            result.append(count)
        }
        
        return result
    }
    
    //二进制状态压缩，每一个bit表示存不存在
    //比如zba可以表示成10000000000000000000000011
    //再比如apple可以表示成00000000001000100000010001
    class func intStateValueWithString(_ string: String, _ startValue: UInt32) -> Int {
        var value = 0
        for code in string.unicodeScalars {
            let bit = code.value - startValue
            value |= (1 << bit)
        }
        return value
    }
}
