//
//  main.swift
//  algorithm_learning
//
//  Created by Locke on 2021/2/25.
//

import Foundation

/*
//1052.生气的书店老板
print("生气的书店老板: \(AngryBookStoreBoss.maxSatisfied_excellent([1,0,1,2,1,1,7,5], [0,1,0,1,0,1,0,1], 3))")

//832.翻转图像
print("翻转图像:\(FlipingAnImage.flipAndInvertImage_excellent([[1,1,0],[1,0,1],[0,0,0]]))")

//867.转置矩阵
print("转置矩阵:\(TransposeMatrix.transpose_excellent([[1,2,3],[4,5,6],[7,8,9]]))")

//1178.猜字谜
print("猜字谜:\(FindNumOfValidWords.findNumOfValidWords_improve(["apple","pleas","please"], ["aelwxyz","aelpxyz","aelpsxy","saelpxy","xaelpsy"]))")

//395.至少有K个重复字符的最长子串
print("至少有K个重复字符的最长子串:\(LongestSubstring.longestSubstring_excellent("ababbc", 2))")

//896.单调数列
//print("单调数列:\(Monotonic.isMonotonic([1,2,2,3]))")
//print("单调数列:\(Monotonic.isMonotonic([6,5,4,4]))")
//print("单调数列:\(Monotonic.isMonotonic([1,3,2]))")
print("单调数列:\(Monotonic.isMonotonic_excellent([1,2,5,3,3]))")

//303.区域和检索 - 数组不可变

//304.二维区域和检索 - 矩阵不可变
let matrix = MatrixSearchExcellent.init([
    [3, 0, 1, 4, 2],
    [5, 6, 3, 2, 1],
    [1, 2, 0, 1, 5],
    [4, 1, 0, 1, 7],
    [1, 0, 3, 0, 5]])
print("二维区域和检索: \(matrix.sumRegion(2, 1, 4, 3))")
print("二维区域和检索: \(matrix.sumRegion(1, 1, 2, 2))")

//338.比特位计数
print("比特位计数: \(CountBits.countBitsExcellent(8))")

//面试题17.10 主要元素
print("主要元素: \(FindMajorityElement.majorityElementExcellent([1,2,5,9,5,9,5,5,5]))")

//面试题10.01 合并排序的数组
var A = [1,2,3,0,0,0]
SortedMerge.merge(&A, 3, [2,5,6], 3)
print("合并排序的数组 \(A)")

//1128.等价多米诺骨牌对的数量
print("等价多米诺骨牌对的数量:\(NumberOfEquivalentDominoPairs.numEquivDominoPairsExcellent([[1,2],[1,2],[1,1],[1,2],[2,2]]))")
 
//1539.第k个缺失的正整数
print("第k个缺失的正整数:\(KthMissingNumber.findKthPositive([5,6,7,8, 9], 9))")

//1275.找出井字棋的获胜者
print("找出井字棋的获胜者:\(WinnerOnTicTacToe.tictactoe([[0,0],[2,0],[1,1],[2,1],[2,2]]))")

//1331.数组序号转换
print("数组序号转换:\(RankTransformArray.arrayRankTransformExcellent([40,10,20,30]))")

//  剑指offer 53.在排序数组中查找数字
print("在排序数组中查找数字:\(SearchNumOnArray.searchExcellent([5,7,7,8,8,10], 8))")

//  1629.按键持续时间最长的键
print("按键持续时间最长的键:\(SlowestKey.slowestKeyExcellent([12,23,36,46,62], "spuda"))")

//  1018.可被5整除的二进制前缀
print("可被5整除的二进制前缀:\(BinaryPrefixDivisibleBy5.prefixesDivBy5([1,0,1,1,1,1,0,0,0,0,1,0,0,0,0,0,1,0,0,1,1,1,1,1,0,0,0,0,1,1,1,0,0,0,0,0,1,0,0,0,1,0,0,1,1,1,1,1,1,0,1,1,0,1,0,0,0,0,0,0,1,0,1,1,1,0,0,1,0]))")

//  1646.获取生成数组中的最大值
print("获取生成数组中的最大值:\(GetMaximumGenerated.getMaximumGenerated(15))")

//  面试题 16.15 珠玑妙算
print("珠玑妙算:\(MasterMind.masterMind("RGBY", "GGRR"))")

//  989.数组形式的整数加法
print("数组形式的整数加法:\(AddToArrayFormOfInt.addToArrayFormExcellent([0], 10000))")

//  1232.缀点成线
print("缀点成线:\(CheckStraingtLine.checkStraightLine([[1,2],[2,3],[3,4],[4,5],[5,6],[6,7]]))")

//  剑指Offer 29.顺时针打印矩阵
print("顺时针打印矩阵:\(SpiralOrder.spiralOrder([[3],[2]]))")

//  剑指Offer 53 - II. 0~n-1中缺失的数字
print("0~n-1中缺失的数字:\(MissingNumber.missingNumber([1,2]))")

//  1346.检查整数及其两倍数是否存在
print("检查整数及其两倍数是否存在:\(CheckDoubleExist.checkIfExistExcellent([-20,8,-6,-14,0,-19,14,4]))")

//  1566. 重复至少 K 次且长度为 M 的模式
print("1566. 重复至少 K 次且长度为 M 的模式:\(LengthMRepeatKMode.containsPattern([2,2,2,2], 2, 3))")

//  1013. 将数组分成和相等的三个部分
print("将数组分成和相等的三个部分:\(ThreePartWithSumByArray.canThreePartsEqualSumExcellent([0,2,1,-6,6,-7,9,1,2,0,1]))")

//  941.有效的山脉数组
print("有效的山脉数组:\(ValidMountainArray.validMountainArray([0,3,2,1]))")

//  914.卡牌分组
print("卡牌分组:\(XKindOfCards.hasGroupsSizeX([1,1,1,2,2,2,3,3]))")

//  1217.玩筹码
print("玩筹码:\(MinimunMovesChipsToSamePosition.minCostToMoveChips([2,2,2,3,3]))")

//  1480.一维数组动态和
print("一维数组动态和:\(SumOfArray.runningSum([3,1,2,10,1]))")

//  1672. 最富有客户的资产总量
print("最富有客户的资产总量:\(RichestCustomerWealth.maximumWealth([[1,5],[7,3],[3,5]]))")
*/
//  1512. 好数对的数目
print("好数对的数目:\(NumberOfGoodPairs.numIdenticalPairs([1,2,3]))")
