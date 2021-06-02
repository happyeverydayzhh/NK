//
//  HJ106.swift
//  NK
//
//  Created by 张欢 on 2021/6/2.
//

import Foundation

//字符逆序
//描述
//将一个字符串str的内容颠倒过来，并输出。str的长度不超过100个字符。
//
//
//输入描述：
//输入一个字符串，可以有空格
//
//输出描述：
//输出逆序的字符串
//
//示例1
//输入：
//I am a student
//复制
//输出：
//tneduts a ma I

func reverseString() {
    while let str = readLine() {
        var res = ""
        for item in str.map{$0}.reversed() {
            res.append(item)
        }
        print(res)
    }
}

