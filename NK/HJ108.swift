//
//  HJ108.swift
//  NK
//
//  Created by 张欢 on 2021/6/2.
//

import Foundation

//求最小公倍数
//描述
//正整数A和正整数B 的最小公倍数是指 能被A和B整除的最小的正整数值，设计一个算法，求输入A和B的最小公倍数。
//
//输入描述：
//输入两个正整数A和B。
//
//输出描述：
//输出A和B的最小公倍数。
//
//示例1
//输入：
//5 7
//复制
//输出：
//35

func minGBS() {
    while let input = readLine() {
        let inputList = input.split(separator: " ")
        let a = Int(inputList.first ?? "") ?? 0
        let b = Int(inputList.last ?? "") ?? 0
        let num = gbs(a, b)
        print(num)
    }
}

func gbs(_ a: Int, _ b: Int) -> Int {
    if a == 0 || b == 0 {
        return 0
    }
    var x = a
    var y = b
    while x%y > 0 {
        let tmp = x
        x = y
        y = tmp%x
    }
    return a*b/y
}
