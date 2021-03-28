//
//  WinnerOnTicTacToe.swift
//  algorithm_learning
//
//  Created by Locke on 2021/3/8.
//
//  1275.找出井字棋的获胜者

import Foundation

public class WinnerOnTicTacToe {
    class func tictactoe(_ moves: [[Int]]) -> String {
        //记录8种可能获胜路线的落子数量
        //下标0-2的值表示123行
        //下标3-5的值表示123列
        //下标6的值表示对角线159
        //下标7的值表示对角线357
        //其中某个值达到3时就表示有人胜出了
        var win = [Int](repeating: 0, count: 8)
        //只看最后一个落子的人是否达到胜利条件
        for i in stride(from: moves.count - 1, through: 0, by: -2) {
            let step = moves[i]
            //第step[0]行被占，值+1
            win[step[0]] += 1
            //第step[1]列被占，值+1，因为下标3-5表示的列，所以下标要+3
            win[step[1] + 3] += 1
            //在159这条对角线上，对角线值+1
            if step[0] == step[1] {
                win[6] += 1
            }
            //在357这条对角线上
            if step[0] + step[1] == 2 {
                win[7] += 1
            }
            if win[step[0]] == 3 || win[step[1] + 3] == 3 || win[6] == 3 || win[7] == 3 {
                //结束，有获胜者
                return moves.count % 2 == 0 ? "B" : "A"
            }
        }
        //没有人胜出，根据数组长度判断平局还是未结束
        return moves.count >= 9 ? "Draw" : "Pending"
    }
}
