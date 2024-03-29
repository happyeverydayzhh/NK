//
//  HJ31.swift
//  NK
//
//  Created by 张欢 on 2021/6/2.
//

import Foundation

//单词倒排
//描述
//对字符串中的所有单词进行倒排。
//
//说明：
//
//1、构成单词的字符只有26个大写或小写英文字母；
//
//2、非构成单词的字符均视为单词间隔符；
//
//3、要求倒排后的单词间隔符以一个空格表示；如果原字符串中相邻单词间有多个间隔符时，倒排转换后也只允许出现一个空格间隔符；
//
//4、每个单词最长20个字母；
//
//输入描述：
//输入一行以空格来分隔的句子
//
//输出描述：
//输出句子的逆序
//
//示例1
//输入：
//I am a student
//复制
//输出：
//student a am I
//复制
//示例2
//输入：
//$bo*y gi!r#l
//复制
//输出：
//l r gi y bo

func HJ31单词倒排() {
    while let str = readLine() {
        let letters: Set<Character> = ["A","B","C","D","E","F","G","H","I","J","K","L","M",
                                       "N","O","P","Q","R","S","T","U","V","W","X","Y","Z",
                                       "a","b","c","d","e","f","g","h","i","j","k","l","m",
                                       "n","o","p","q","r","s","t","u","v","w","x","y","z"]
        var word = ""
        var words: [String] = []
        for item in str {
            if letters.contains(item) {
                word.append(item)
            } else {
                words.append(word)
                word = ""
            }
        }
        words.append(word)
        
        var reverseWords: [String] = []
        
        for item in words.reversed() {
            reverseWords.append(item)
        }
        let res = reverseWords.joined(separator: " ")
        print(res)
    }
}
