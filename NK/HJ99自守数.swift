//
//  HJ99自守数.swift
//  NK
//
//  Created by xiaoZuDeMeng on 2021/6/2.
//

import Foundation

/*
 https://www.nowcoder.com/practice/88ddd31618f04514ae3a689e83f3ab8e?tpId=37&&tqId=21322&rp=1&ru=/ta/huawei&qru=/ta/huawei/question-ranking
 自守数
 描述
 自守数是指一个数的平方的尾数等于该数自身的自然数。例如：25^2 = 625，76^2 = 5776，9376^2 = 87909376。请求出n以内的自守数的个数


 接口说明


 /*
 功能: 求出n以内的自守数的个数


 输入参数：
 int n

 返回值：
 n以内自守数的数量。
 */


 public static int CalcAutomorphicNumbers( int n)
 {
 /*在这里实现功能*/

 return 0;
 }
 本题有多组输入数据，请使用while(cin>>)等方式处理


 输入描述：
 int型整数

 输出描述：
 n以内自守数的数量。

 示例1
 输入：
 2000
 复制
 输出：
 8

 */

func HJ99_自守数() {
    while let str = readLine() {
        let n = Int(str) ?? 0
        var cnt = 0
        var q = 10
        for i in 0...n {
            if q <= i {
                q *= 10
            }
            if i*i%q == i {
                cnt += 1
            }
        }
        print(cnt)
    }
}
