//
//  HJ102.swift
//  NK
//
//  Created by 张欢 on 2021/6/2.
//

import Foundation

//字符统计
//描述
//输入一个只包含小写英文字母和数字的字符串，按照不同字符统计个数由多到少输出统计结果，如果统计的个数相同，则按照ASCII码由小到大排序输出。
//本题含有多组样例输入
//
//输入描述：
//一个只包含小写英文字母和数字的字符串。
//
//输出描述：
//一个字符串，为不同字母出现次数的降序表示。若出现次数相同，则按ASCII码的升序输出。
//
//示例1
//输入：
//aaddccdc
//1b1bbbbbbbbb
//复制
//输出：
//cda
//b1
//复制
//说明：
//第一个样例里，c和d出现3次，a出现2次，但c的ASCII码比d小，所以先输出c，再输出d，最后输出a.

func HJ102字符统计() {
    while let str = readLine() {
        var dict = [String: Int]()
        for i in str {
            let key = String(i)
            let cnt = dict[key] ?? 0
            dict[key] = cnt + 1
        }
        var keys = [String](dict.keys)
        keys = keys.sorted { (a, b) -> Bool in
            let cntA = dict[a]!
            let cntB = dict[b]!
            if cntA == cntB {
                return a < b
            } else {
                return cntA > cntB
            }
        }
        var res = ""
        for i in keys {
            res.append(String(i))
        }
        print(res)
    }
}
