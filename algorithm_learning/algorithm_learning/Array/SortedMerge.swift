//
//  SortedMerge.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/5.
//
//  面试题10.01 合并排序的数组

import Foundation

public class SortedMerge {
    class func merge(_ A: inout [Int], _ m: Int, _ B: [Int], _ n: Int) {
        //逆向双指针，从后往前遍历，较大的数放到A数组末尾，再依次往前
        var pa = m - 1, pb = n - 1;
        var tail = m + n - 1;
        var cur:Int;
        while (pa >= 0 || pb >= 0) {
            if (pa == -1) {
                cur = B[pb];
                pb -= 1
            } else if (pb == -1) {
                cur = A[pa];
                pa -= 1
            } else if (A[pa] > B[pb]) {
                cur = A[pa];
                pa -= 1
            } else {
                cur = B[pb];
                pb -= 1
            }
            A[tail] = cur;
            tail -= 1
        }
    }
}
