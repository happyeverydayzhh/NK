//
//  HJ105.swift
//  NK
//
//  Created by 张欢 on 2021/6/2.
//

import Foundation

//记负均正II
// 算法知识视频讲解
//较难  通过率：24.15%  时间限制：1秒  空间限制：32M
//知识点
//数组
//思维
//题目
//题解(10)
//讨论(241)
//排行
//warning校招时部分企业笔试将禁止编程题跳出页面，为提前适应，练习时请使用在线自测，而非本地IDE。
//描述
//从输入任意个整型数，统计其中的负数个数并求所有非负数的平均值，结果保留一位小数，如果没有非负数，则平均值为0
//本题有多组输入数据，输入到文件末尾，请使用while(cin>>)读入
//数据范围小于1e6
//输入描述：
//输入任意个整数，每行输入一个。
//
//输出描述：
//输出负数个数以及所有非负数的平均值
//
//示例1
//输入：
//-13
//-4
//-7
//复制
//输出：
//3
//0.0
//复制

func HJ105记负均正II() {
    while let str = readLine() {
        let ress = str.split(separator: " ")

        var count = 0
        var count_ = 0
        var res = 0.0
        var sum = 0.0
        for item in ress {
            let a = Int(item) ?? 0
            if a >= 0 {
                count += 1
                sum += Double(a)
                res = sum/Double(count)
            } else {
                count_ += 1
            }
        }
        print("\(count_)\n")
        print(res)
    }
}
