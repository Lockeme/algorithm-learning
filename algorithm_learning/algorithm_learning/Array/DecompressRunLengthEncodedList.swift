//
//  DecompressRunLengthEncodedList.swift
//  algorithm_learning
//
//  Created by Locke on 2021/4/2.
//
//  1313. 解压缩编码列表

import Foundation

public class DecompressRunLengthEncodedList {
    class func decompressRLElist(_ nums: [Int]) -> [Int] {
        var result = [Int]()
        for i in stride(from: 0, to: nums.count, by: 2) {
            let num = nums[i + 1]
            for _ in 0..<nums[i] {
                result.append(num)
            }
        }
        return result
    }
    
    //速度最快解
    class func decompressRLElistExcellent(_ nums: [Int]) -> [Int] {
        var rslt = [Int]();
        for i in 0...nums.count/2-1{
            var tmp = Array.init(repeating: nums[i*2+1], count: nums[i*2]);
            rslt = rslt + tmp;
        }
        return rslt;
    }
}
