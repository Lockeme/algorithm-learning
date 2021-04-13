//
//  DesignAnOrderedStream.swift
//  algorithm_learning
//
//  Created by Locke on 2021/4/13.
//
//  1656. 设计有序流

import Foundation

public class OrderedStream {
    var ptr:Int
    var values: [String]
    
    init(_ n: Int) {
        ptr = 1
        values = [String](repeating: "", count: n)
    }
    
    func insert(_ idKey: Int, _ value: String) -> [String] {
        values[idKey - 1] = value
        var result = [String]()
        while ptr <= values.count && values[ptr - 1].count > 0 {
            result.append(values[ptr - 1])
            ptr += 1
        }
        return result
    }
}
