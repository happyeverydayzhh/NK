//
//  HJ107.swift
//  NK
//
//  Created by 张欢 on 2021/6/2.
//

import Foundation

//求解立方根
//描述
//计算一个数字的立方根，不使用库函数。
//保留一位小数。
//
//
//输入描述：
//待求解参数，为double类型（一个实数）
//
//输出描述：
//输入参数的立方根。保留一位小数。
//
//示例1
//输入：
//216
//复制
//输出：
//6.0

func lifanggen() {
    while let input = readLine() {
        let num = Double(input) ?? 0
        var a: Double = 0
        var flag: Int = 0
        if num > 0 {
            flag = 1
        } else {
            flag = -1
        }
        
        while (a*a*a) < num*Double(flag) {
            a += 0.01
        }
        print(String(format: "%.1f", a*Double(flag)))
    }
}

