//
//  HJ101.swift
//  NK
//
//  Created by 张欢 on 2021/6/2.
//

import Foundation

//https://www.nowcoder.com/practice/dd0c6b26c9e541f5b935047ff4156309?tpId=37&&tqId=21324&rp=1&ru=/ta/huawei&qru=/ta/huawei/question-ranking
//输入整型数组和排序标识，对其元素按照升序或降序进行排序
//描述
//输入整型数组和排序标识，对其元素按照升序或降序进行排序（一组测试用例可能会有多组数据）
//
//本题有多组输入，请使用while(cin>>)处理
//
//输入描述：
//第一行输入数组元素个数
//第二行输入待排序的数组，每个数用空格隔开
//第三行输入一个整数0或1。0代表升序排序，1代表降序排序
//
//输出描述：
//输出排好序的数字
//
//示例1
//输入：
//8
//1 2 4 9 3 55 64 25
//0
//5
//1 2 3 4 5
//1
//复制
//输出：
//1 2 3 4 9 25 55 64
//5 4 3 2 1
//复制

func HJ101_输入整型数组和排序标识，对其元素按照升序或降序进行排序() {
    while let n = readLine(), let str = readLine(), let flag = readLine() {
        let r = Int(n) ?? 0
        let f = Int(flag) ?? 0
        
        let array = str.split(separator: " ")
        let arr = array.sorted { (a, b) -> Bool in
            if f == 0 {
                return Int(a)! < Int(b)!
            } else {
                return Int(a)! > Int(b)!
            }
        }
        print(arr.joined(separator: " "))
    }
}
