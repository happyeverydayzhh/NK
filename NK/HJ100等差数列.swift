//
//  HJ100等差数列.swift
//  NK
//
//  Created by 张欢 on 2021/6/2.
//

import Foundation

/*
 https://www.nowcoder.com/practice/f792cb014ed0474fb8f53389e7d9c07f?tpId=37&&tqId=21323&rp=1&ru=/ta/huawei&qru=/ta/huawei/question-ranking
 等差数列
 描述
 功能:等差数列 2，5，8，11，14。。。。

 输入:正整数N >0

 输出:求等差数列前N项和

 本题为多组输入，请使用while(cin>>)等形式读取数据

 输入描述：
 输入一个正整数。

 输出描述：
 输出一个相加后的整数。

 示例1
 输入：
 2
 复制
 输出：
 7
 */

func HJ100_等差数列() {
    while let str = readLine() {

        let d = 3
        var a1 = 2
        let n = Int(str) ?? 0
        var sum = 0
        
        for _ in 0..<n {
            sum = sum + a1
            a1 += d
        }
        
        print(sum)
    }
}
