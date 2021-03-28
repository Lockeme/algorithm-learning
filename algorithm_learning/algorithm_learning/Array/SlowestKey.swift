//
//  SlowestKey.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/11.
//
//  1629.按键持续时间最长的键

import Foundation

public class SlowestKey {
    class func slowestKey(_ releaseTimes: [Int], _ keysPressed: String) -> Character {
        let keys = Array(keysPressed), count =  releaseTimes.count
        //max记录当前按键最大时长
        //preTime记录上次总时间
        //result记录结果值
        var max = 0, preTime = 0, result : Character = "a"
        for i in 0..<count {
            let total = releaseTimes[i]
            let time = total - preTime
            if time > max {
                //当前按键时长大于历史最大值，更新max和result
                max = time
                let c = keys[i]
                result = c
            }
            else if time == max {
                //当前按键时长等于历史最大值，计算判断是否需要更新result
                let c = keys[i]
                if c.unicodeScalars.first!.value > result.unicodeScalars.first!.value {
                    result = c
                }
            }
            //记录时间
            preTime = total
        }
        return result
    }
    
    class func slowestKeyExcellent(_ releaseTimes: [Int], _ keysPressed: String) -> Character {
        let cs = [Character](keysPressed)
        //记录最大时长(元组.1)和对应的按键(元组.0)
        var result:(Character,Int) = (cs[0],releaseTimes[0])
        for i in stride(from: 1, to: releaseTimes.count, by: 1) {
            let laps = releaseTimes[i] - releaseTimes[i-1]
            if laps == result.1 {
                //时长相等，判断是否更新按键
                result.0 = max(result.0, cs[i])
            }
            else if laps > result.1{
                //当前按键时长大于历史最大时长，更新元组
                result = (cs[i],laps)
            }
        }
        return result.0
    }
}
