//
//  HJ103.swift
//  NK
//
//  Created by 张欢 on 2021/6/2.
//

import Foundation

//Redraiment的走法
//描述
//Redraiment是走梅花桩的高手。Redraiment可以选择任意一个起点，从前到后，但只能从低处往高处的桩子走。他希望走的步数最多，你能替Redraiment研究他最多走的步数吗？
//
//本题含有多组样例输入
//
//
//输入描述：
//输入多组数据，1组有2行，第1行先输入数组的个数，第2行再输入梅花桩的高度
//
//输出描述：
//一组输出一个结果
//
//示例1
//输入：
//6
//2 5 1 5 4 5
//3
//3 2 1
//复制
//输出：
//3
//1
//复制
//说明：
//6个点的高度各为 2 5 1 5 4 5
//如从第1格开始走,最多为3步, 2 4 5
//从第2格开始走,最多只有1步,5
//而从第3格开始走最多有3步,1 4 5
//从第5格开始走最多有2步,4 5
//所以这个结果是3。

func HJ103梅花桩() {
    while let n = Int(readLine() ?? ""), let line = readLine() {
        if n <= 0 {
            print(0)
            break
        }

        let parts = line.split(separator: " ")
        var array = [Int]()
        for s in parts {
            array.append(Int(String(s))!)
        }
        var res = 0
        var f = [Int](repeating: 1, count: n)
        for i in 1..<n {
            for j in 0..<i {
                if array[i] > array[j] {
                    f[i] = max(f[i], f[j] + 1)
                }
            }
            res = max(res, f[i])
        }
        print(res)
    }
}
