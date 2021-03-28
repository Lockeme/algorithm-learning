//
//  RankTransformArray.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/9.
//
//  1331.数组序号转换

import Foundation

public class RankTransformArray {
    class func arrayRankTransform(_ arr: [Int]) -> [Int] {
        //数组排序
        let sortArr = arr.sorted(by: <)
        //存数组内的值对应序号
        var numDic = [Int:Int]()
        var sortNum = 1, lastNum = 0
        for (index, num) in sortArr.enumerated() {
            if index == 0 {
                lastNum = num
            }
            else if num > lastNum {
                sortNum += 1
                lastNum = num
            }
            else if num == lastNum {
                continue
            }
            numDic[num] = sortNum
        }
        //遍历，将序号存到新数组中
        var result = [Int]()
        for i in arr {
            result.append(numDic[i]!)
        }
        return result
    }
    
    class func arrayRankTransformExcellent(_ arr: [Int]) -> [Int] {
        //初始化一个字典用来存储排序后原数组的元素和序号
        var map = [Int: Int]()
        var result = [Int]()
        
        //将去重且排序后的数组元素和其对应的序号插入字典
        for (index, num) in Set<Int>(arr).sorted(by: < ).enumerated() {
            map.updateValue(index + 1, forKey: num)
            // map[num] = index + 1
        }
        
        //将每个元素的序号按原数组的顺序添加到返回值
        for num in arr {
            result.append(map[num]!)
        }
        
        return result
    }
}
